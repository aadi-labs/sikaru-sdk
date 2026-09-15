
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("ReviewQueueClient", () => {
    
    test("create_review_queue_item (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "traceIds" : [ "traceIds" ] };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/review-queue").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.reviewQueue.createReviewQueueItem("project_id", {
    traceIds: ["traceIds"]
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_review_queue_item (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "traceIds" : [ "traceIds" , "traceIds" ] };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/review-queue").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.reviewQueue.createReviewQueueItem("project_id", {
    traceIds: ["traceIds", "traceIds"]
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
