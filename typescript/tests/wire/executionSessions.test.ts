
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("ExecutionSessionsClient", () => {
    
    test("list (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.list("project_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.list("project_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions/session_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.get("project_id", "session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions/session_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.get("project_id", "session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("branch (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "idempotency_key" : "idempotency_key" , "source_run_id" : "source_run_id" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/execution-sessions/session_id/branches").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.branch("project_id", "session_id", {
    idempotency_key: "idempotency_key",
    source_run_id: "source_run_id"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("branch (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "idempotency_key" : "x" , "source_run_id" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/execution-sessions/session_id/branches").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.branch("project_id", "session_id", {
    idempotency_key: "x",
    source_run_id: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("list_files (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions/session_id/files").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.listFiles("project_id", "session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_files (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions/session_id/files").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.listFiles("project_id", "session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("delete_file (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .delete("/v1/projects/project_id/execution-sessions/session_id/files/file_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.deleteFile("project_id", "session_id", "file_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("delete_file (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .delete("/v1/projects/project_id/execution-sessions/session_id/files/file_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.deleteFile("project_id", "session_id", "file_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("list_session_inputs (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions/session_id/inputs").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.listSessionInputs("project_id", "session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_session_inputs (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/execution-sessions/session_id/inputs").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.listSessionInputs("project_id", "session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("append_turn (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "idempotency_key" : "idempotency_key" , "input" : { "key" : "value" } };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/execution-sessions/session_id/turns").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.appendTurn("project_id", "session_id", {
    idempotency_key: "idempotency_key",
    input: {
        "key": "value"
    }
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("append_turn (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "idempotency_key" : "x" , "input" : { "input" : { "key" : "value" } } };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/execution-sessions/session_id/turns").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.appendTurn("project_id", "session_id", {
    idempotency_key: "x",
    input: {
        "input": {
            "key": "value"
        }
    }
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "tenant_id" : "tenant_id" , "user_id" : "user_id" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/execution-sessions").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executionSessions.create("project_id", "harness_id", {
    tenant_id: "tenant_id",
    user_id: "user_id"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "tenant_id" : "x" , "user_id" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/execution-sessions").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executionSessions.create("project_id", "harness_id", {
    tenant_id: "x",
    user_id: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
