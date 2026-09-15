
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("FeedbackClient", () => {
    
    test("create_feedback (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "kind" : "thumbs_up" , "target" : "trace" , "targetId" : "targetId" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/feedback").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.feedback.createFeedback("project_id", {
    kind: "thumbs_up",
    target: "trace",
    targetId: "targetId"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_feedback (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "kind" : "thumbs_up" , "target" : "trace" , "targetId" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/feedback").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.feedback.createFeedback("project_id", {
    kind: "thumbs_up",
    target: "trace",
    targetId: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
