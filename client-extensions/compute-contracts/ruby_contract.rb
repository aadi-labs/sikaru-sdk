require 'Sikaru'

def client(token)
  Sikaru::Client.new(base_url: ENV.fetch('CONTRACT_URL'), token: token, max_retries: 5)
end

def check(value)
  raise 'typed lifecycle assertion failed' unless value
end

controller, worker = client('controller'), client('sk_compute_worker')
p = {kind: 'existing_directory', identity: 'workspace'}
a = controller.compute_attachments.create(project_id: 'project', session_id: 'session', environment_id: 'environment', idempotency_key: 'create', workspace_provenance: p)
check(a.owner_id.nil?)
check(a.workspace_generation == 'generation' && a.status == 'pending')
check(controller.compute_attachments.get(project_id: 'project', attachment_id: 'attachment').journal_id == 'journal')
check(worker.compute_workers.poll(project_id: 'project', environment_id: 'environment', wait_seconds: 0).attachments[0].id == 'attachment')
claim = worker.compute_attachments.claim(project_id: 'project', attachment_id: 'attachment', idempotency_key: 'claim')
check(claim.attachment_id == 'attachment')
check(claim.owner_id == 'worker')
check(claim.owner_epoch == 1)
credential = worker.compute_attachments.issue_credential(project_id: 'project', attachment_id: 'attachment', owner_id: claim.owner_id, owner_epoch: claim.owner_epoch)
check(credential.credential_id == 'executor-credential')
check(credential.expires_at == 2000000000.0)
executor = client(credential.token)
ready = executor.compute_attachments.ready(project_id: 'project', attachment_id: 'attachment', executor_instance_id: 'instance', journal_id: 'journal', workspace_provenance: p, protocol_version: 'sikaru-compute-v1', capabilities: ['compute.execute'])
check(ready.status == 'ready' && ready.lease_ttl_seconds == 60)
work = executor.compute_operations.poll(project_id: 'project', attachment_id: 'attachment', wait_seconds: 0)
check(work.execution_phase == 'running' && work.operations[0].request_digest == 'a'*64)
r = {project_id: 'project', attachment_id: 'attachment', run_id: 'run', tool_call_id: 'tool', tool_provider_id: 'provider', capability_name: 'compute.execute', idempotency_key: 'receipt', request_digest: 'a'*64, status: 'completed', payload: {output: 'done'}}
check(executor.compute_operations.submit_receipt(**r).created)
check(executor.compute_operations.submit_receipt(**r).created == false)
reconciled = executor.compute_attachments.reconcile(project_id: 'project', attachment_id: 'attachment', executor_instance_id: 'instance', journal_id: 'journal', workspace_provenance: p, processes: [{handle_id: 'handle', status: 'lost', evidence: 'ownership unproven'}])
check(reconciled.attachment.status == 'recovery_required')
check(executor.compute_attachments.status(project_id: 'project', attachment_id: 'attachment').processes[0].status == 'lost')
terminal = executor.compute_operations.poll(project_id: 'project', attachment_id: 'attachment')
check(terminal.execution_phase == 'terminal' && terminal.execution.terminal)
begin
  client('wrong-scope').compute_operations.poll(project_id: 'project', attachment_id: 'attachment')
  raise 'unauthorized request succeeded'
rescue Sikaru::Errors::ResponseError => error
  check(error.code == 403)
end
begin
  executor.compute_operations.submit_receipt(**r, request_options: {max_retries: 9})
  raise 'unavailable mutation succeeded'
rescue Sikaru::Errors::ResponseError => error
  check(error.code == 503)
end
