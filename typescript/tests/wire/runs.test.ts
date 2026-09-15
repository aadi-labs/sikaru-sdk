
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("RunsClient", () => {
    
    test("start (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "input" : { "key" : "value" } , "policy" : { "key" : "value" } , "product_context" : { "key" : "value" } , "tenant_id" : "tenant_id" , "user_id" : "user_id" };
        const rawResponseBody = { "compatibilityProfileId" : "compatibilityProfileId" , "completedAt" : "completedAt" , "costSummary" : { "key" : "value" } , "eventsUrl" : "eventsUrl" , "harnessId" : "harnessId" , "harnessVersionId" : "harnessVersionId" , "latencyMs" : 1.1 , "runId" : "runId" , "status" : "status" , "usageSummary" : { "key" : "value" } };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.start("project_id", "harness_id", {
    input: {
        "key": "value"
    },
    policy: {
        "key": "value"
    },
    product_context: {
        "key": "value"
    },
    tenant_id: "tenant_id",
    user_id: "user_id"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("start (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "input" : { "input" : { "key" : "value" } } , "policy" : { "policy" : { "key" : "value" } } , "product_context" : { "product_context" : { "key" : "value" } } , "tenant_id" : "tenant_id" , "user_id" : "user_id" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.start("project_id", "harness_id", {
    input: {
        "input": {
            "key": "value"
        }
    },
    policy: {
        "policy": {
            "key": "value"
        }
    },
    product_context: {
        "product_context": {
            "key": "value"
        }
    },
    tenant_id: "tenant_id",
    user_id: "user_id"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "compatibilityProfileId" : "compatibilityProfileId" , "completedAt" : "completedAt" , "costSummary" : { "key" : "value" } , "eventsUrl" : "eventsUrl" , "harnessId" : "harnessId" , "harnessVersionId" : "harnessVersionId" , "latencyMs" : 1.1 , "runId" : "runId" , "status" : "status" , "usageSummary" : { "key" : "value" } };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/runs/run_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.get("project_id", "run_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/runs/run_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.get("project_id", "run_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("pending_actions (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/runs/run_id/actions").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.pendingActions("project_id", "run_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("pending_actions (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/runs/run_id/actions").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.pendingActions("project_id", "run_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("cancel (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/cancel").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.cancel("project_id", "run_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("cancel (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/cancel").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.cancel("project_id", "run_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("events (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "events" : [ { "createdAt" : "createdAt" , "eventType" : "eventType" , "id" : "id" , "payload" : { "key" : "value" } , "sequence" : 1 } ] , "nextAfter" : 1 };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/runs/run_id/events").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.events("project_id", "run_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("events (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/runs/run_id/events").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.events("project_id", "run_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("recover (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/recover").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.recover("project_id", "run_id", {});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("recover (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/recover").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.recover("project_id", "run_id", {})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("decide_approval (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "decision" : "approved" , "idempotency_key" : "idempotency_key" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/tool-calls/tool_call_id/approval").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.decideApproval("project_id", "run_id", "tool_call_id", {
    decision: "approved",
    idempotency_key: "idempotency_key"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("decide_approval (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "decision" : "approved" , "idempotency_key" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/tool-calls/tool_call_id/approval").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.decideApproval("project_id", "run_id", "tool_call_id", {
    decision: "approved",
    idempotency_key: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("submit_tool_result (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "capability_name" : "capability_name" , "idempotency_key" : "idempotency_key" , "payload" : { "key" : "value" } , "status" : "completed" , "tool_call_id" : "tool_call_id" , "tool_provider_id" : "tool_provider_id" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/tool-results").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runs.submitToolResult("project_id", "run_id", {
    capability_name: "capability_name",
    idempotency_key: "idempotency_key",
    payload: {
        "key": "value"
    },
    status: "completed",
    tool_call_id: "tool_call_id",
    tool_provider_id: "tool_provider_id"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("submit_tool_result (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "capability_name" : "capability_name" , "idempotency_key" : "idempotency_key" , "payload" : { "payload" : { "key" : "value" } } , "status" : "completed" , "tool_call_id" : "tool_call_id" , "tool_provider_id" : "tool_provider_id" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/runs/run_id/tool-results").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runs.submitToolResult("project_id", "run_id", {
    capability_name: "capability_name",
    idempotency_key: "idempotency_key",
    payload: {
        "payload": {
            "key": "value"
        }
    },
    status: "completed",
    tool_call_id: "tool_call_id",
    tool_provider_id: "tool_provider_id"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
