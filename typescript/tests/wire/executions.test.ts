
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("ExecutionsClient", () => {
    
    test("execution_runtime_lineage (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/executions/trace_id/runtime").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.executions.executionRuntimeLineage("project_id", "trace_id", {
    account_id: "account_id"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("execution_runtime_lineage (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/executions/trace_id/runtime").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.executions.executionRuntimeLineage("project_id", "trace_id", {
    account_id: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
