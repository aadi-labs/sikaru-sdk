
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("WorkflowsClient", () => {
    
    test("import_workflow (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "payload" : { "key" : "value" } };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflows/import").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.workflows.importWorkflow("project_id", {
    payload: {
        "key": "value"
    }
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("import_workflow (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "payload" : { "payload" : { "key" : "value" } } };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflows/import").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.workflows.importWorkflow("project_id", {
    payload: {
        "payload": {
            "key": "value"
        }
    }
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("export_product_workflow (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/workflows/workflow_id/export").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.workflows.exportProductWorkflow("project_id", "workflow_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("export_product_workflow (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/workflows/workflow_id/export").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.workflows.exportProductWorkflow("project_id", "workflow_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("start_project_workflow_run (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflows/workflow_id/runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.workflows.startProjectWorkflowRun("project_id", "workflow_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("start_project_workflow_run (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflows/workflow_id/runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.workflows.startProjectWorkflowRun("project_id", "workflow_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_project_workflow_version (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflows/workflow_id/versions").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.workflows.createProjectWorkflowVersion("project_id", "workflow_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_project_workflow_version (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflows/workflow_id/versions").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.workflows.createProjectWorkflowVersion("project_id", "workflow_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
