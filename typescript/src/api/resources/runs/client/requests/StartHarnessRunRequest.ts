
import * as Sikaru from "../../../../index.js";

/**
 * @example
 *     {
 *         input: {
 *             "key": "value"
 *         },
 *         policy: {
 *             "key": "value"
 *         },
 *         product_context: {
 *             "key": "value"
 *         },
 *         tenant_id: "tenant_id",
 *         user_id: "user_id"
 *     }
 */
export interface StartHarnessRunRequest {
    capability_grants?: string[];
    compute_provider_id?: string | null;
    conversation_id?: string | null;
    correlation_id?: string | null;
    event_delivery?: Sikaru.EventDeliveryRequest;
    execution_environment?: StartHarnessRunRequest.ExecutionEnvironment;
    input: Record<string, unknown>;
    job_id?: string | null;
    policy: Record<string, unknown>;
    product_context: Record<string, unknown>;
    run_mode?: StartHarnessRunRequest.RunMode;
    tenant_id: string;
    tool_provider_refs?: Sikaru.ToolProviderRefRequest[];
    trace_id?: string | null;
    user_id: string;
}

export namespace StartHarnessRunRequest {
    export const ExecutionEnvironment = {
            Managed: "managed",
            Local: "local"
        } as const;
    export type ExecutionEnvironment = typeof ExecutionEnvironment[keyof typeof ExecutionEnvironment];
    export const RunMode = {
            Interactive: "interactive",
            BackgroundSubagent: "background_subagent",
            SandboxExecution: "sandbox_execution"
        } as const;
    export type RunMode = typeof RunMode[keyof typeof RunMode];
}
