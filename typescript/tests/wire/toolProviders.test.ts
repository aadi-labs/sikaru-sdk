
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("ToolProvidersClient", () => {
    
    test("register_tool_provider (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "broker_endpoint_ref" : "broker_endpoint_ref" , "capability_prefix" : "capability_prefix" , "display_name" : "display_name" , "provider_type" : "provider_type" , "tool_catalog_ref" : "tool_catalog_ref" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/tool-providers").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.toolProviders.registerToolProvider("project_id", {
    broker_endpoint_ref: "broker_endpoint_ref",
    capability_prefix: "capability_prefix",
    display_name: "display_name",
    provider_type: "provider_type",
    tool_catalog_ref: "tool_catalog_ref"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("register_tool_provider (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "broker_endpoint_ref" : "broker_endpoint_ref" , "capability_prefix" : "capability_prefix" , "display_name" : "display_name" , "provider_type" : "provider_type" , "tool_catalog_ref" : "tool_catalog_ref" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/tool-providers").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.toolProviders.registerToolProvider("project_id", {
    broker_endpoint_ref: "broker_endpoint_ref",
    capability_prefix: "capability_prefix",
    display_name: "display_name",
    provider_type: "provider_type",
    tool_catalog_ref: "tool_catalog_ref"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("attach_source_tool_skill (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "capability_refs" : [ "capability_refs" ] , "description" : "description" , "source" : { "kind" : "kind" } };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/tool-providers/tool_provider_id/skills").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.toolProviders.attachSourceToolSkill("project_id", "tool_provider_id", {
    capability_refs: ["capability_refs"],
    description: "description",
    source: {
        kind: "kind"
    }
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("attach_source_tool_skill (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "capability_refs" : [ "capability_refs" , "capability_refs" ] , "description" : "description" , "source" : { "kind" : "kind" } };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/tool-providers/tool_provider_id/skills").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.toolProviders.attachSourceToolSkill("project_id", "tool_provider_id", {
    capability_refs: ["capability_refs", "capability_refs"],
    description: "description",
    source: {
        kind: "kind"
    }
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
