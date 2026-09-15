
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("HarnessesClient", () => {
    
    test("improvement_options (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/harnesses/harness_id/improvement-options").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.harnesses.improvementOptions("project_id", "harness_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("improvement_options (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/harnesses/harness_id/improvement-options").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.harnesses.improvementOptions("project_id", "harness_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("list_improvements (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/harnesses/harness_id/improvements").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.harnesses.listImprovements("project_id", "harness_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_improvements (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/harnesses/harness_id/improvements").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.harnesses.listImprovements("project_id", "harness_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("start_improvement (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "idempotency_key" : "idempotency_key" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/improvements").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.harnesses.startImprovement("project_id", "harness_id", {
    idempotency_key: "idempotency_key"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("start_improvement (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "idempotency_key" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/improvements").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.harnesses.startImprovement("project_id", "harness_id", {
    idempotency_key: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get_improvement (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/harnesses/harness_id/improvements/job_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.harnesses.getImprovement("project_id", "harness_id", "job_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get_improvement (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/harnesses/harness_id/improvements/job_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.harnesses.getImprovement("project_id", "harness_id", "job_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("resume_improvement (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/improvements/job_id/resume").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.harnesses.resumeImprovement("project_id", "harness_id", "job_id", {});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("resume_improvement (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = null;
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/improvements/job_id/resume").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.harnesses.resumeImprovement("project_id", "harness_id", "job_id", null)
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("train_model_stub (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/training").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.harnesses.trainModelStub("project_id", "harness_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("train_model_stub (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/harnesses/harness_id/training").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.harnesses.trainModelStub("project_id", "harness_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
