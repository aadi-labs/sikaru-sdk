
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("ImportSessionsClient", () => {
    
    test("list_import_sessions (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.listImportSessions("project_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_import_sessions (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.listImportSessions("project_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_import_session (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "displayName" : "displayName" , "mode" : "workflow" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.createImportSession("project_id", {
    displayName: "displayName",
    mode: "workflow"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_import_session (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "displayName" : "displayName" , "mode" : "workflow" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.createImportSession("project_id", {
    displayName: "displayName",
    mode: "workflow"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get_import_session (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.getImportSession("project_id", "import_session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get_import_session (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.getImportSession("project_id", "import_session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_compatibility_profile (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "displayName" : "displayName" , "harnessId" : "harnessId" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/compatibility-profile").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.createCompatibilityProfile("project_id", "import_session_id", {
    displayName: "displayName",
    harnessId: "harnessId"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_compatibility_profile (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "displayName" : "displayName" , "harnessId" : "harnessId" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/compatibility-profile").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.createCompatibilityProfile("project_id", "import_session_id", {
    displayName: "displayName",
    harnessId: "harnessId"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("list_import_session_diffs (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id/diffs").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.listImportSessionDiffs("project_id", "import_session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_import_session_diffs (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id/diffs").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.listImportSessionDiffs("project_id", "import_session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("get_parity_report (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id/parity-report").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.getParityReport("project_id", "import_session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("get_parity_report (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id/parity-report").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.getParityReport("project_id", "import_session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("promote_import_session (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "activeHarnessVersionId" : "activeHarnessVersionId" , "agentSlug" : "agentSlug" , "compatibilityProfileId" : "compatibilityProfileId" , "displayName" : "displayName" , "harnessId" : "harnessId" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/promote").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.promoteImportSession("project_id", "import_session_id", {
    activeHarnessVersionId: "activeHarnessVersionId",
    agentSlug: "agentSlug",
    compatibilityProfileId: "compatibilityProfileId",
    displayName: "displayName",
    harnessId: "harnessId"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("promote_import_session (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "activeHarnessVersionId" : "activeHarnessVersionId" , "agentSlug" : "agentSlug" , "compatibilityProfileId" : "compatibilityProfileId" , "displayName" : "displayName" , "harnessId" : "harnessId" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/promote").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.promoteImportSession("project_id", "import_session_id", {
    activeHarnessVersionId: "activeHarnessVersionId",
    agentSlug: "agentSlug",
    compatibilityProfileId: "compatibilityProfileId",
    displayName: "displayName",
    harnessId: "harnessId"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_replay_run (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "compatibilityProfileId" : "compatibilityProfileId" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/replay-runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.createReplayRun("project_id", "import_session_id", {
    compatibilityProfileId: "compatibilityProfileId"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_replay_run (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "compatibilityProfileId" : "compatibilityProfileId" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/replay-runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.createReplayRun("project_id", "import_session_id", {
    compatibilityProfileId: "compatibilityProfileId"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("list_source_artifacts (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id/source-artifacts").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.listSourceArtifacts("project_id", "import_session_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_source_artifacts (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/import-sessions/import_session_id/source-artifacts").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.listSourceArtifacts("project_id", "import_session_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_source_artifact (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "contentDigest" : "contentDigest" , "exportPolicy" : "customer_source_exportable" , "sourceKind" : "workflow_json" , "storageRef" : "storageRef" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/source-artifacts").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.createSourceArtifact("project_id", "import_session_id", {
    contentDigest: "contentDigest",
    exportPolicy: "customer_source_exportable",
    sourceKind: "workflow_json",
    storageRef: "storageRef"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_source_artifact (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "contentDigest" : "contentDigest" , "exportPolicy" : "customer_source_exportable" , "sourceKind" : "workflow_json" , "storageRef" : "storageRef" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/source-artifacts").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.createSourceArtifact("project_id", "import_session_id", {
    contentDigest: "contentDigest",
    exportPolicy: "customer_source_exportable",
    sourceKind: "workflow_json",
    storageRef: "storageRef"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_staging_run (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "compatibilityProfileId" : "compatibilityProfileId" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/staging-runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.importSessions.createStagingRun("project_id", "import_session_id", {
    compatibilityProfileId: "compatibilityProfileId"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_staging_run (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "compatibilityProfileId" : "compatibilityProfileId" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/import-sessions/import_session_id/staging-runs").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.importSessions.createStagingRun("project_id", "import_session_id", {
    compatibilityProfileId: "compatibilityProfileId"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
