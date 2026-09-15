
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("WorkflowRunsClient", () => {
    
    test("project_workflow_run_events (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/workflow-runs/run_id/events").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.workflowRuns.projectWorkflowRunEvents("project_id", "run_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("project_workflow_run_events (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/workflow-runs/run_id/events").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.workflowRuns.projectWorkflowRunEvents("project_id", "run_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("recover_project_workflow_run (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflow-runs/run_id/recover").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.workflowRuns.recoverProjectWorkflowRun("project_id", "run_id", {});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("recover_project_workflow_run (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/workflow-runs/run_id/recover").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.workflowRuns.recoverProjectWorkflowRun("project_id", "run_id", {})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
