import Foundation
import Testing
import Sikaru

@Suite("ConnectionsClient Wire Tests") struct ConnectionsClientWireTests {
    @Test func listConnections1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "config": {
                      "auth": "none",
                      "endpoint": "endpoint",
                      "header_name": "header_name",
                      "oauth_client_id": "oauth_client_id",
                      "oauth_scopes": [
                        "oauth_scopes"
                      ],
                      "toolkit": "toolkit"
                    },
                    "display_name": "display_name",
                    "expires_at": 1.1,
                    "grants": [
                      {
                        "active": true,
                        "agent_id": "agent_id",
                        "approval": "approval",
                        "environment": "environment",
                        "id": "id",
                        "tools": {
                          "key": "value"
                        }
                      }
                    ],
                    "id": "id",
                    "kind": "kind",
                    "owner": "owner",
                    "ownership": "ownership",
                    "revocation": "revocation",
                    "status": "status",
                    "tools": [
                      {
                        "digest": "digest",
                        "input_schema": {
                          "key": "value"
                        },
                        "name": "name"
                      }
                    ],
                    "version": 1
                  }
                ]
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            Connection(
                config: ConnectionConfig(
                    auth: Optional(ConnectionConfigAuth.none),
                    endpoint: Optional(Nullable<String>.value("endpoint")),
                    headerName: Optional(Nullable<String>.value("header_name")),
                    oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                    oauthScopes: Optional([
                        "oauth_scopes"
                    ]),
                    toolkit: Optional(Nullable<String>.value("toolkit"))
                ),
                displayName: "display_name",
                expiresAt: Optional(Nullable<Double>.value(1.1)),
                grants: [
                    ConnectionGrant(
                        active: true,
                        agentId: "agent_id",
                        approval: "approval",
                        environment: "environment",
                        id: "id",
                        tools: [
                            "key": "value"
                        ]
                    )
                ],
                id: "id",
                kind: "kind",
                owner: "owner",
                ownership: "ownership",
                revocation: "revocation",
                status: "status",
                tools: [
                    ConnectionTool(
                        digest: "digest",
                        inputSchema: [
                            "key": JSONValue.string("value")
                        ],
                        name: "name"
                    )
                ],
                version: 1
            )
        ]
        let response = try await client.connections.listConnections(
            projectId: "project_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listConnections2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "config": {
                      "auth": "none",
                      "endpoint": "endpoint",
                      "header_name": "header_name",
                      "oauth_client_id": "oauth_client_id",
                      "oauth_scopes": [
                        "oauth_scopes",
                        "oauth_scopes"
                      ],
                      "toolkit": "toolkit"
                    },
                    "display_name": "display_name",
                    "expires_at": 1.1,
                    "grants": [
                      {
                        "active": true,
                        "agent_id": "agent_id",
                        "approval": "approval",
                        "environment": "environment",
                        "id": "id",
                        "tools": {
                          "tools": "tools"
                        }
                      },
                      {
                        "active": true,
                        "agent_id": "agent_id",
                        "approval": "approval",
                        "environment": "environment",
                        "id": "id",
                        "tools": {
                          "tools": "tools"
                        }
                      }
                    ],
                    "id": "id",
                    "kind": "kind",
                    "owner": "owner",
                    "ownership": "ownership",
                    "revocation": "revocation",
                    "status": "status",
                    "tools": [
                      {
                        "description": "",
                        "digest": "digest",
                        "input_schema": {
                          "input_schema": {
                            "key": "value"
                          }
                        },
                        "name": "name",
                        "version": "version"
                      },
                      {
                        "description": "",
                        "digest": "digest",
                        "input_schema": {
                          "input_schema": {
                            "key": "value"
                          }
                        },
                        "name": "name",
                        "version": "version"
                      }
                    ],
                    "version": 1
                  },
                  {
                    "config": {
                      "auth": "none",
                      "endpoint": "endpoint",
                      "header_name": "header_name",
                      "oauth_client_id": "oauth_client_id",
                      "oauth_scopes": [
                        "oauth_scopes",
                        "oauth_scopes"
                      ],
                      "toolkit": "toolkit"
                    },
                    "display_name": "display_name",
                    "expires_at": 1.1,
                    "grants": [
                      {
                        "active": true,
                        "agent_id": "agent_id",
                        "approval": "approval",
                        "environment": "environment",
                        "id": "id",
                        "tools": {
                          "tools": "tools"
                        }
                      },
                      {
                        "active": true,
                        "agent_id": "agent_id",
                        "approval": "approval",
                        "environment": "environment",
                        "id": "id",
                        "tools": {
                          "tools": "tools"
                        }
                      }
                    ],
                    "id": "id",
                    "kind": "kind",
                    "owner": "owner",
                    "ownership": "ownership",
                    "revocation": "revocation",
                    "status": "status",
                    "tools": [
                      {
                        "description": "",
                        "digest": "digest",
                        "input_schema": {
                          "input_schema": {
                            "key": "value"
                          }
                        },
                        "name": "name",
                        "version": "version"
                      },
                      {
                        "description": "",
                        "digest": "digest",
                        "input_schema": {
                          "input_schema": {
                            "key": "value"
                          }
                        },
                        "name": "name",
                        "version": "version"
                      }
                    ],
                    "version": 1
                  }
                ]
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            Connection(
                config: ConnectionConfig(
                    auth: Optional(ConnectionConfigAuth.none),
                    endpoint: Optional(Nullable<String>.value("endpoint")),
                    headerName: Optional(Nullable<String>.value("header_name")),
                    oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                    oauthScopes: Optional([
                        "oauth_scopes",
                        "oauth_scopes"
                    ]),
                    toolkit: Optional(Nullable<String>.value("toolkit"))
                ),
                displayName: "display_name",
                expiresAt: Optional(Nullable<Double>.value(1.1)),
                grants: [
                    ConnectionGrant(
                        active: true,
                        agentId: "agent_id",
                        approval: "approval",
                        environment: "environment",
                        id: "id",
                        tools: [
                            "tools": "tools"
                        ]
                    ),
                    ConnectionGrant(
                        active: true,
                        agentId: "agent_id",
                        approval: "approval",
                        environment: "environment",
                        id: "id",
                        tools: [
                            "tools": "tools"
                        ]
                    )
                ],
                id: "id",
                kind: "kind",
                owner: "owner",
                ownership: "ownership",
                revocation: "revocation",
                status: "status",
                tools: [
                    ConnectionTool(
                        description: Optional(""),
                        digest: "digest",
                        inputSchema: [
                            "input_schema": JSONValue.object(
                                [
                                    "key": JSONValue.string("value")
                                ]
                            )
                        ],
                        name: "name",
                        version: Optional(Nullable<String>.value("version"))
                    ),
                    ConnectionTool(
                        description: Optional(""),
                        digest: "digest",
                        inputSchema: [
                            "input_schema": JSONValue.object(
                                [
                                    "key": JSONValue.string("value")
                                ]
                            )
                        ],
                        name: "name",
                        version: Optional(Nullable<String>.value("version"))
                    )
                ],
                version: 1
            ),
            Connection(
                config: ConnectionConfig(
                    auth: Optional(ConnectionConfigAuth.none),
                    endpoint: Optional(Nullable<String>.value("endpoint")),
                    headerName: Optional(Nullable<String>.value("header_name")),
                    oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                    oauthScopes: Optional([
                        "oauth_scopes",
                        "oauth_scopes"
                    ]),
                    toolkit: Optional(Nullable<String>.value("toolkit"))
                ),
                displayName: "display_name",
                expiresAt: Optional(Nullable<Double>.value(1.1)),
                grants: [
                    ConnectionGrant(
                        active: true,
                        agentId: "agent_id",
                        approval: "approval",
                        environment: "environment",
                        id: "id",
                        tools: [
                            "tools": "tools"
                        ]
                    ),
                    ConnectionGrant(
                        active: true,
                        agentId: "agent_id",
                        approval: "approval",
                        environment: "environment",
                        id: "id",
                        tools: [
                            "tools": "tools"
                        ]
                    )
                ],
                id: "id",
                kind: "kind",
                owner: "owner",
                ownership: "ownership",
                revocation: "revocation",
                status: "status",
                tools: [
                    ConnectionTool(
                        description: Optional(""),
                        digest: "digest",
                        inputSchema: [
                            "input_schema": JSONValue.object(
                                [
                                    "key": JSONValue.string("value")
                                ]
                            )
                        ],
                        name: "name",
                        version: Optional(Nullable<String>.value("version"))
                    ),
                    ConnectionTool(
                        description: Optional(""),
                        digest: "digest",
                        inputSchema: [
                            "input_schema": JSONValue.object(
                                [
                                    "key": JSONValue.string("value")
                                ]
                            )
                        ],
                        name: "name",
                        version: Optional(Nullable<String>.value("version"))
                    )
                ],
                version: 1
            )
        ]
        let response = try await client.connections.listConnections(
            projectId: "project_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createConnection1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.createConnection(
            projectId: "project_id",
            request: .init(
                config: ConnectionConfig(

                ),
                displayName: "display_name",
                kind: .mcp
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createConnection2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.createConnection(
            projectId: "project_id",
            request: .init(
                config: ConnectionConfig(

                ),
                displayName: "x",
                kind: .mcp
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getConnection1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.getConnection(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getConnection2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.getConnection(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func authorize1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "expires_at": 1.1,
                  "state": "state",
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConnectionAuthorization(
            expiresAt: 1.1,
            state: "state",
            url: "url"
        )
        let response = try await client.connections.authorize(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func authorize2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "expires_at": 1.1,
                  "state": "state",
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ConnectionAuthorization(
            expiresAt: 1.1,
            state: "state",
            url: "url"
        )
        let response = try await client.connections.authorize(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func complete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.complete(
            projectId: "project_id",
            connectionId: "connection_id",
            request: .init(state: "state"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func complete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.complete(
            projectId: "project_id",
            connectionId: "connection_id",
            request: .init(state: "blackcurrant...."),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func credentials1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.credentials(
            projectId: "project_id",
            connectionId: "connection_id",
            request: .init(credentials: ConnectionCredentials(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func credentials2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.credentials(
            projectId: "project_id",
            connectionId: "connection_id",
            request: .init(credentials: ConnectionCredentials(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disable1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.disable(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disable2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.disable(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disconnect1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.disconnect(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disconnect2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.disconnect(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func discover1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.discover(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func discover2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.discover(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func enable1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.enable(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func enable2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.enable(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func events1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "action": "action",
                    "actor": "actor",
                    "created_at": 1.1,
                    "id": "id"
                  }
                ]
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ConnectionEvent(
                action: "action",
                actor: "actor",
                createdAt: 1.1,
                id: "id"
            )
        ]
        let response = try await client.connections.events(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func events2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                [
                  {
                    "action": "action",
                    "actor": "actor",
                    "created_at": 1.1,
                    "id": "id"
                  },
                  {
                    "action": "action",
                    "actor": "actor",
                    "created_at": 1.1,
                    "id": "id"
                  }
                ]
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            ConnectionEvent(
                action: "action",
                actor: "actor",
                createdAt: 1.1,
                id: "id"
            ),
            ConnectionEvent(
                action: "action",
                actor: "actor",
                createdAt: 1.1,
                id: "id"
            )
        ]
        let response = try await client.connections.events(
            projectId: "project_id",
            connectionId: "connection_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func grant1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.grant(
            projectId: "project_id",
            connectionId: "connection_id",
            request: .init(
                agentId: "agent_id",
                tools: [
                    "tools"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func grant2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.grant(
            projectId: "project_id",
            connectionId: "connection_id",
            request: .init(
                agentId: "x",
                tools: [
                    "tools",
                    "tools"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func revokeGrant1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "key": "value"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "description",
                      "digest": "digest",
                      "input_schema": {
                        "key": "value"
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "key": "value"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional("description"),
                    digest: "digest",
                    inputSchema: [
                        "key": JSONValue.string("value")
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.revokeGrant(
            projectId: "project_id",
            connectionId: "connection_id",
            grantId: "grant_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func revokeGrant2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "config": {
                    "auth": "none",
                    "endpoint": "endpoint",
                    "header_name": "header_name",
                    "oauth_client_id": "oauth_client_id",
                    "oauth_scopes": [
                      "oauth_scopes",
                      "oauth_scopes"
                    ],
                    "toolkit": "toolkit"
                  },
                  "display_name": "display_name",
                  "expires_at": 1.1,
                  "grants": [
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    },
                    {
                      "active": true,
                      "agent_id": "agent_id",
                      "approval": "approval",
                      "environment": "environment",
                      "id": "id",
                      "tools": {
                        "tools": "tools"
                      }
                    }
                  ],
                  "id": "id",
                  "kind": "kind",
                  "owner": "owner",
                  "ownership": "ownership",
                  "revocation": "revocation",
                  "status": "status",
                  "tools": [
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    },
                    {
                      "description": "",
                      "digest": "digest",
                      "input_schema": {
                        "input_schema": {
                          "key": "value"
                        }
                      },
                      "name": "name",
                      "version": "version"
                    }
                  ],
                  "version": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = Connection(
            config: ConnectionConfig(
                auth: Optional(ConnectionConfigAuth.none),
                endpoint: Optional(Nullable<String>.value("endpoint")),
                headerName: Optional(Nullable<String>.value("header_name")),
                oauthClientId: Optional(Nullable<String>.value("oauth_client_id")),
                oauthScopes: Optional([
                    "oauth_scopes",
                    "oauth_scopes"
                ]),
                toolkit: Optional(Nullable<String>.value("toolkit"))
            ),
            displayName: "display_name",
            expiresAt: Optional(Nullable<Double>.value(1.1)),
            grants: [
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                ),
                ConnectionGrant(
                    active: true,
                    agentId: "agent_id",
                    approval: "approval",
                    environment: "environment",
                    id: "id",
                    tools: [
                        "tools": "tools"
                    ]
                )
            ],
            id: "id",
            kind: "kind",
            owner: "owner",
            ownership: "ownership",
            revocation: "revocation",
            status: "status",
            tools: [
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                ),
                ConnectionTool(
                    description: Optional(""),
                    digest: "digest",
                    inputSchema: [
                        "input_schema": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    name: "name",
                    version: Optional(Nullable<String>.value("version"))
                )
            ],
            version: 1
        )
        let response = try await client.connections.revokeGrant(
            projectId: "project_id",
            connectionId: "connection_id",
            grantId: "grant_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}