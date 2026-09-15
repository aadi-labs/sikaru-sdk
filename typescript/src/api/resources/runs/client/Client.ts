
import type { BaseClientOptions, BaseRequestOptions } from "../../../../BaseClient.js";
import { normalizeClientOptionsWithAuth, type NormalizedClientOptionsWithAuth } from "../../../../BaseClient.js";
import * as core from "../../../../core/index.js";
import { mergeHeaders, mergeOnlyDefinedHeaders } from "../../../../core/headers.js";
import { mergeAdditionalBodyParameters } from "../../../../core/requestBody.js";
import * as environments from "../../../../environments.js";
import { handleNonStatusCodeError } from "../../../../errors/handleNonStatusCodeError.js";
import * as errors from "../../../../errors/index.js";
import * as Sikaru from "../../../index.js";

export declare namespace RunsClient {
    export type Options = BaseClientOptions;

    export interface RequestOptions extends BaseRequestOptions {
    }
}

export class RunsClient {
    protected readonly _options: NormalizedClientOptionsWithAuth<RunsClient.Options>;

    constructor(options: RunsClient.Options = {}) {

        this._options = normalizeClientOptionsWithAuth(options);
    }

    /**
     * @param {string} project_id
     * @param {string} harness_id
     * @param {Sikaru.StartHarnessRunRequest} request
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.start("project_id", "harness_id", {
     *         input: {
     *             "key": "value"
     *         },
     *         policy: {
     *             "key": "value"
     *         },
     *         product_context: {
     *             "key": "value"
     *         },
     *         tenant_id: "tenant_id",
     *         user_id: "user_id"
     *     })
     */
    public start(project_id: string, harness_id: string, request: Sikaru.StartHarnessRunRequest, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Sikaru.ManagedRun> {
        return core.HttpResponsePromise.fromPromise(this.__start(project_id, harness_id, request, requestOptions));
    }

    private async __start(project_id: string, harness_id: string, request: Sikaru.StartHarnessRunRequest, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Sikaru.ManagedRun>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/runs`),
            method: "POST",
            headers: _headers,
            contentType: "application/json",
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            requestType: "json",
            body: mergeAdditionalBodyParameters(request, requestOptions?.additionalBodyParameters),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Sikaru.ManagedRun, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/harnesses/{harness_id}/runs");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.get("project_id", "run_id")
     */
    public get(project_id: string, run_id: string, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Sikaru.ManagedRun> {
        return core.HttpResponsePromise.fromPromise(this.__get(project_id, run_id, requestOptions));
    }

    private async __get(project_id: string, run_id: string, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Sikaru.ManagedRun>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}`),
            method: "GET",
            headers: _headers,
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Sikaru.ManagedRun, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "GET", "/v1/projects/{project_id}/runs/{run_id}");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.pendingActions("project_id", "run_id")
     */
    public pendingActions(project_id: string, run_id: string, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__pendingActions(project_id, run_id, requestOptions));
    }

    private async __pendingActions(project_id: string, run_id: string, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}/actions`),
            method: "GET",
            headers: _headers,
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Record<string, unknown>, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "GET", "/v1/projects/{project_id}/runs/{run_id}/actions");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.cancel("project_id", "run_id")
     */
    public cancel(project_id: string, run_id: string, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__cancel(project_id, run_id, requestOptions));
    }

    private async __cancel(project_id: string, run_id: string, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}/cancel`),
            method: "POST",
            headers: _headers,
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Record<string, unknown>, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/runs/{run_id}/cancel");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {Sikaru.EventsRunsRequest} request
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.events("project_id", "run_id")
     */
    public events(project_id: string, run_id: string, request: Sikaru.EventsRunsRequest = {}, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Sikaru.RunEvents> {
        return core.HttpResponsePromise.fromPromise(this.__events(project_id, run_id, request, requestOptions));
    }

    private async __events(project_id: string, run_id: string, request: Sikaru.EventsRunsRequest = {}, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Sikaru.RunEvents>> {
        const { after, limit, stream, "Last-Event-ID": lastEventId } = request;
        const _queryParams: Record<string, unknown> = {
            after,
            limit,
            stream
        };
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, mergeOnlyDefinedHeaders({ "Last-Event-ID": lastEventId ?? undefined }), requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}/events`),
            method: "GET",
            headers: _headers,
            queryString: core.url.queryBuilder().addMany(_queryParams).mergeAdditional(requestOptions?.queryParams).build(),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Sikaru.RunEvents, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "GET", "/v1/projects/{project_id}/runs/{run_id}/events");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {Sikaru.RecoverRunRequest} request
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.recover("project_id", "run_id", {})
     */
    public recover(project_id: string, run_id: string, request: Sikaru.RecoverRunRequest, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__recover(project_id, run_id, request, requestOptions));
    }

    private async __recover(project_id: string, run_id: string, request: Sikaru.RecoverRunRequest, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}/recover`),
            method: "POST",
            headers: _headers,
            contentType: "application/json",
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            requestType: "json",
            body: mergeAdditionalBodyParameters(request, requestOptions?.additionalBodyParameters),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Record<string, unknown>, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/runs/{run_id}/recover");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {string} tool_call_id
     * @param {Sikaru.ApprovalInput} request
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.decideApproval("project_id", "run_id", "tool_call_id", {
     *         decision: "approved",
     *         idempotency_key: "idempotency_key"
     *     })
     */
    public decideApproval(project_id: string, run_id: string, tool_call_id: string, request: Sikaru.ApprovalInput, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__decideApproval(project_id, run_id, tool_call_id, request, requestOptions));
    }

    private async __decideApproval(project_id: string, run_id: string, tool_call_id: string, request: Sikaru.ApprovalInput, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}/tool-calls/${core.url.encodePathParam(tool_call_id)}/approval`),
            method: "POST",
            headers: _headers,
            contentType: "application/json",
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            requestType: "json",
            body: mergeAdditionalBodyParameters(request, requestOptions?.additionalBodyParameters),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Record<string, unknown>, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/runs/{run_id}/tool-calls/{tool_call_id}/approval");
    }

    /**
     * @param {string} project_id
     * @param {string} run_id
     * @param {Sikaru.SubmitToolResultRequest} request
     * @param {RunsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.runs.submitToolResult("project_id", "run_id", {
     *         capability_name: "capability_name",
     *         idempotency_key: "idempotency_key",
     *         payload: {
     *             "key": "value"
     *         },
     *         status: "completed",
     *         tool_call_id: "tool_call_id",
     *         tool_provider_id: "tool_provider_id"
     *     })
     */
    public submitToolResult(project_id: string, run_id: string, request: Sikaru.SubmitToolResultRequest, requestOptions?: RunsClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__submitToolResult(project_id, run_id, request, requestOptions));
    }

    private async __submitToolResult(project_id: string, run_id: string, request: Sikaru.SubmitToolResultRequest, requestOptions?: RunsClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/runs/${core.url.encodePathParam(run_id)}/tool-results`),
            method: "POST",
            headers: _headers,
            contentType: "application/json",
            queryString: core.url.queryBuilder().mergeAdditional(requestOptions?.queryParams).build(),
            requestType: "json",
            body: mergeAdditionalBodyParameters(request, requestOptions?.additionalBodyParameters),
            timeoutMs: (requestOptions?.timeoutInSeconds ?? this._options?.timeoutInSeconds ?? 60) * 1000,
            maxRetries: requestOptions?.maxRetries ?? this._options?.maxRetries,
            abortSignal: requestOptions?.abortSignal,
            fetchFn: this._options?.fetch,
            logging: this._options.logging
        });
        if (_response.ok) {
            return { data: _response.body as Record<string, unknown>, rawResponse: _response.rawResponse };
        }

        if (_response.error.reason === "status-code") {
            switch (_response.error.statusCode) {
                case 422: throw new Sikaru.UnprocessableEntityError(_response.error.body as Sikaru.HttpValidationError, _response.rawResponse);
                default: throw new errors.SikaruError({
                    statusCode: _response.error.statusCode,
                    body: _response.error.body,
                    rawResponse: _response.rawResponse
                });
            }
        }

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/runs/{run_id}/tool-results");
    }
}
