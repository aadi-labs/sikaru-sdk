
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("ModelSettingsClient", () => {
    
    test("get_model_settings (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/model-settings").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.modelSettings.getModelSettings("project_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get_model_settings (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/model-settings").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.modelSettings.getModelSettings("project_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("update_model_settings (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "selectedModelId" : "selectedModelId" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .put("/v1/projects/project_id/model-settings").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.modelSettings.updateModelSettings("project_id", {
    selectedModelId: "selectedModelId"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("update_model_settings (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "selectedModelId" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .put("/v1/projects/project_id/model-settings").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.modelSettings.updateModelSettings("project_id", {
    selectedModelId: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
