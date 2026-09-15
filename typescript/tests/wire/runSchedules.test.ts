
import * as Sikaru from "../../src/api/index";
import { SikaruApi } from "../../src/Client";
import { mockServerPool } from "../mock-server/MockServerPool";

describe("RunSchedulesClient", () => {
    
    test("list_schedules (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/run-schedules").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runSchedules.listSchedules("project_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("list_schedules (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .get("/v1/projects/project_id/run-schedules").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runSchedules.listSchedules("project_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("create_schedule (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "input" : { "key" : "value" } , "interval_seconds" : 1 , "session_id" : "session_id" };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/run-schedules").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runSchedules.createSchedule("project_id", {
    input: {
        "key": "value"
    },
    interval_seconds: 1,
    session_id: "session_id"
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("create_schedule (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "input" : { "input" : { "key" : "value" } } , "interval_seconds" : 2592000 , "session_id" : "x" };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .post("/v1/projects/project_id/run-schedules").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runSchedules.createSchedule("project_id", {
    input: {
        "input": {
            "key": "value"
        }
    },
    interval_seconds: 2592000,
    session_id: "x"
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("delete_schedule (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .delete("/v1/projects/project_id/run-schedules/schedule_id").respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runSchedules.deleteSchedule("project_id", "schedule_id");
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("delete_schedule (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .delete("/v1/projects/project_id/run-schedules/schedule_id").respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runSchedules.deleteSchedule("project_id", "schedule_id")
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
    test("pause_schedule (1)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "paused" : true };
        const rawResponseBody = { "key" : "value" };
        
        server
            .mockEndpoint()
            .patch("/v1/projects/project_id/run-schedules/schedule_id").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(200).jsonBody(rawResponseBody)
                .build();

        
                        
                                const response = await client.runSchedules.pauseSchedule("project_id", "schedule_id", {
    paused: true
});
                                expect(response).toEqual(rawResponseBody);
                              
                    
    });
          
    test("pause_schedule (2)", async () => {
        const server = mockServerPool.createServer();
        const client = new SikaruApi({ "maxRetries" : 0 , "apiKey" : "test" , "environment" : server.baseUrl });
        const rawRequestBody = { "paused" : true };
        const rawResponseBody = { };
        
        server
            .mockEndpoint()
            .patch("/v1/projects/project_id/run-schedules/schedule_id").jsonBody(rawRequestBody)
                .respondWith()
            .statusCode(422).jsonBody(rawResponseBody)
                .build();

        
            await expect(async () => {
                return await client.runSchedules.pauseSchedule("project_id", "schedule_id", {
    paused: true
})
            }).rejects.toThrow(Sikaru.UnprocessableEntityError);
    });
          
});
