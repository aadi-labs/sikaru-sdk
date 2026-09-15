
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("EvalSeedsClient", () => {
    
    test("create_eval_seed (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "issueId" : "issueId" , "issueTitle" : "issueTitle" , "traceIds" : [ "traceIds" ] };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/eval-seeds").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.evalSeeds.createEvalSeed("project_id", {
    issueId: "issueId",
    issueTitle: "issueTitle",
    traceIds: ["traceIds"]
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_eval_seed (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "issueId" : "x" , "issueTitle" : "x" , "traceIds" : [ "traceIds" , "traceIds" ] };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/eval-seeds").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.evalSeeds.createEvalSeed("project_id", {
    issueId: "x",
    issueTitle: "x",
    traceIds: ["traceIds", "traceIds"]
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
