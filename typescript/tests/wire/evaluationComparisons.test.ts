
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("EvaluationComparisonsClient", () => {
    
    test("list_comparisons (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-comparisons").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationComparisons.listComparisons("project_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_comparisons (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-comparisons").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationComparisons.listComparisons("project_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_comparison (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "cases" : [ { "baseline" : { "accountId" : "accountId" , "conversationId" : "conversationId" , "messageId" : "messageId" } , "candidate" : { "accountId" : "accountId" , "conversationId" : "conversationId" , "messageId" : "messageId" } , "caseId" : "caseId" } ] , "evaluator" : "evaluator" , "id" : "id" , "revision" : "revision" , "rubric" : "rubric" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-comparisons").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationComparisons.createComparison("project_id", {
    cases: [{
            baseline: {
                accountId: "accountId",
                conversationId: "conversationId",
                messageId: "messageId"
            },
            candidate: {
                accountId: "accountId",
                conversationId: "conversationId",
                messageId: "messageId"
            },
            caseId: "caseId"
        }],
    evaluator: "evaluator",
    id: "id",
    revision: "revision",
    rubric: "rubric"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_comparison (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "cases" : [ { "baseline" : { "accountId" : "x" , "conversationId" : "x" , "messageId" : "x" } , "candidate" : { "accountId" : "x" , "conversationId" : "x" , "messageId" : "x" } , "caseId" : "x" } , { "baseline" : { "accountId" : "x" , "conversationId" : "x" , "messageId" : "x" } , "candidate" : { "accountId" : "x" , "conversationId" : "x" , "messageId" : "x" } , "caseId" : "x" } ] , "evaluator" : "x" , "id" : "x" , "revision" : "x" , "rubric" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-comparisons").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationComparisons.createComparison("project_id", {
    cases: [{
            baseline: {
                accountId: "x",
                conversationId: "x",
                messageId: "x"
            },
            candidate: {
                accountId: "x",
                conversationId: "x",
                messageId: "x"
            },
            caseId: "x"
        }, {
            baseline: {
                accountId: "x",
                conversationId: "x",
                messageId: "x"
            },
            candidate: {
                accountId: "x",
                conversationId: "x",
                messageId: "x"
            },
            caseId: "x"
        }],
    evaluator: "x",
    id: "x",
    revision: "x",
    rubric: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get_comparison (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-comparisons/comparison_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationComparisons.getComparison("project_id", "comparison_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get_comparison (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/evaluation-comparisons/comparison_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationComparisons.getComparison("project_id", "comparison_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("cancel_comparison (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-comparisons/comparison_id/cancel").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evaluationComparisons.cancelComparison("project_id", "comparison_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("cancel_comparison (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/evaluation-comparisons/comparison_id/cancel").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evaluationComparisons.cancelComparison("project_id", "comparison_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
