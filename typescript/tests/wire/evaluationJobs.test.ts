
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("EvaluationJobsClient", () => {
    
    test("list_jobs (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-jobs").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationJobs.listJobs("project_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_jobs (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-jobs").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationJobs.listJobs("project_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_job (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "evaluator" : "evaluator" , "requestId" : "requestId" , "revision" : "revision" , "rubric" : "rubric" , "targets" : [ { "target" : { "accountId" : "accountId" , "kind" : "message" } , "traceId" : "traceId" } ] };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-jobs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationJobs.createJob("project_id", {
    evaluator: "evaluator",
    requestId: "requestId",
    revision: "revision",
    rubric: "rubric",
    targets: [{
            target: {
                accountId: "accountId",
                kind: "message"
            },
            traceId: "traceId"
        }]
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_job (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "evaluator" : "x" , "requestId" : "x" , "revision" : "x" , "rubric" : "x" , "targets" : [ { "target" : { "accountId" : "x" , "kind" : "message" } , "traceId" : "x" } , { "target" : { "accountId" : "x" , "kind" : "message" } , "traceId" : "x" } ] };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-jobs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationJobs.createJob("project_id", {
    evaluator: "x",
    requestId: "x",
    revision: "x",
    rubric: "x",
    targets: [{
            target: {
                accountId: "x",
                kind: "message"
            },
            traceId: "x"
        }, {
            target: {
                accountId: "x",
                kind: "message"
            },
            traceId: "x"
        }]
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get_job (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-jobs/job_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationJobs.getJob("project_id", "job_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get_job (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-jobs/job_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationJobs.getJob("project_id", "job_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("cancel_job (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-jobs/job_id/cancel").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationJobs.cancelJob("project_id", "job_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("cancel_job (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-jobs/job_id/cancel").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationJobs.cancelJob("project_id", "job_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
