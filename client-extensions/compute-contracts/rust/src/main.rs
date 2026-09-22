use serde_json::{json, to_value};
use sikaru::{ApiClientBuilder, RequestOptions, Sikaru};

fn client(token: &str) -> Sikaru {
    ApiClientBuilder::new(std::env::var("CONTRACT_URL").unwrap())
        .token(token)
        .max_retries(5)
        .build()
        .unwrap()
}

#[tokio::main]
async fn main() {
    let controller = client("controller");
    let worker = client("sk_compute_worker");
    let p = json!({"kind":"existing_directory","identity":"workspace"});
    let a = controller.compute_attachments.create("project","session", &serde_json::from_value(json!({"environment_id":"environment","idempotency_key":"create","workspace_provenance":p})).unwrap(),None).await.unwrap();
    assert!(a.owner_id.is_none());
    assert_eq!(a.workspace_generation, "generation");
    assert_eq!(to_value(a.status).unwrap(), "pending");
    assert_eq!(
        controller
            .compute_attachments
            .get("project", "attachment", None)
            .await
            .unwrap()
            .journal_id,
        "journal"
    );
    let queue = worker
        .compute_workers
        .poll("project", "environment", &Default::default(), None)
        .await
        .unwrap();
    assert_eq!(queue.attachments[0].id, "attachment");
    let claim = worker.compute_attachments.claim("project", "attachment", &sikaru::ClaimInput { idempotency_key: "claim".into() }, None).await.unwrap();
    assert_eq!(claim.attachment_id, "attachment");
    assert_eq!(claim.owner_id, "worker");
    assert_eq!(claim.owner_epoch, 1);
    let credential = worker.compute_attachments.issue_credential("project", "attachment", &sikaru::ExecutorCredentialInput { owner_id: claim.owner_id, owner_epoch: claim.owner_epoch }, None).await.unwrap();
    assert_eq!(credential.credential_id, "executor-credential");
    assert_eq!(credential.expires_at, 2000000000.0);
    let executor = client(&credential.token);
    let ready = executor.compute_attachments.ready("project","attachment",&serde_json::from_value(json!({"executor_instance_id":"instance","journal_id":"journal","workspace_provenance":p,"protocol_version":"sikaru-compute-v1","capabilities":["compute.execute"]})).unwrap(),None).await.unwrap();
    assert_eq!(to_value(ready.status).unwrap(), "ready");
    execute(&executor, p).await;
}

async fn execute(executor: &Sikaru, p: serde_json::Value) {
    let work = executor
        .compute_operations
        .poll("project", "attachment", &Default::default(), None)
        .await
        .unwrap();
    assert_eq!(to_value(work.execution_phase).unwrap(), "running");
    assert_eq!(work.operations[0].request_digest, "a".repeat(64));
    let receipt = serde_json::from_value(json!({"run_id":"run","tool_call_id":"tool","tool_provider_id":"provider","capability_name":"compute.execute","idempotency_key":"receipt","request_digest":"a".repeat(64),"status":"completed","payload":{"output":"done"}})).unwrap();
    assert!(
        executor
            .compute_operations
            .submit_receipt("project", "attachment", &receipt, None)
            .await
            .unwrap()
            .created
    );
    assert!(
        !executor
            .compute_operations
            .submit_receipt("project", "attachment", &receipt, None)
            .await
            .unwrap()
            .created
    );
    let recovered = executor.compute_attachments.reconcile("project","attachment",&serde_json::from_value(json!({"executor_instance_id":"instance","journal_id":"journal","workspace_provenance":p,"processes":[{"handle_id":"handle","status":"lost","evidence":"ownership unproven"}]})).unwrap(),None).await.unwrap();
    assert_eq!(
        to_value(recovered.attachment.status).unwrap(),
        "recovery_required"
    );
    let status = executor
        .compute_attachments
        .status("project", "attachment", None)
        .await
        .unwrap();
    assert_eq!(to_value(&status.processes[0].status).unwrap(), "lost");
    let terminal = executor
        .compute_operations
        .poll("project", "attachment", &Default::default(), None)
        .await
        .unwrap();
    assert_eq!(to_value(terminal.execution_phase).unwrap(), "terminal");
    assert!(terminal.execution.unwrap().terminal);
    let auth = client("wrong-scope")
        .compute_operations
        .poll("project", "attachment", &Default::default(), None)
        .await
        .unwrap_err();
    match auth {
        sikaru::ApiError::ForbiddenError { detail, .. } => {
            assert_eq!(detail.as_deref(), Some("Outside attachment authority"))
        }
        other => panic!("expected forbidden error, got {other}"),
    }
    let failure = executor
        .compute_operations
        .submit_receipt(
            "project",
            "attachment",
            &receipt,
            Some(RequestOptions::new().max_retries(9)),
        )
        .await
        .unwrap_err();
    match failure {
        sikaru::ApiError::ServiceUnavailableError { detail, .. } => {
            assert_eq!(detail.as_deref(), Some("Response lost after commit"))
        }
        other => panic!("expected unavailable error, got {other}"),
    }
}
