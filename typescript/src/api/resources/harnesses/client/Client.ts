
import type { BaseClientOptions, BaseRequestOptions } from "../../../../BaseClient.js";
import { normalizeClientOptionsWithAuth, type NormalizedClientOptionsWithAuth } from "../../../../BaseClient.js";
import * as core from "../../../../core/index.js";
import { mergeHeaders } from "../../../../core/headers.js";
import { mergeAdditionalBodyParameters } from "../../../../core/requestBody.js";
import * as environments from "../../../../environments.js";
import { handleNonStatusCodeError } from "../../../../errors/handleNonStatusCodeError.js";
import * as errors from "../../../../errors/index.js";
import * as Sikaru from "../../../index.js";

export declare namespace HarnessesClient {
    export type Options = BaseClientOptions;

    export interface RequestOptions extends BaseRequestOptions {
    }
}

export class HarnessesClient {
    protected readonly _options: NormalizedClientOptionsWithAuth<HarnessesClient.Options>;

    constructor(options: HarnessesClient.Options = {}) {

        this._options = normalizeClientOptionsWithAuth(options);
    }

    /**
     * @param {string} project_id
     * @param {string} harness_id
     * @param {HarnessesClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnesses.improvementOptions("project_id", "harness_id")
     */
    public improvementOptions(project_id: string, harness_id: string, requestOptions?: HarnessesClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__improvementOptions(project_id, harness_id, requestOptions));
    }

    private async __improvementOptions(project_id: string, harness_id: string, requestOptions?: HarnessesClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/improvement-options`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "GET", "/v1/projects/{project_id}/harnesses/{harness_id}/improvement-options");
    }

    /**
     * @param {string} project_id
     * @param {string} harness_id
     * @param {Sikaru.ListImprovementsHarnessesRequest} request
     * @param {HarnessesClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnesses.listImprovements("project_id", "harness_id")
     */
    public listImprovements(project_id: string, harness_id: string, request: Sikaru.ListImprovementsHarnessesRequest = {}, requestOptions?: HarnessesClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__listImprovements(project_id, harness_id, request, requestOptions));
    }

    private async __listImprovements(project_id: string, harness_id: string, request: Sikaru.ListImprovementsHarnessesRequest = {}, requestOptions?: HarnessesClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const { after, limit } = request;
        const _queryParams: Record<string, unknown> = {
            after,
            limit
        };
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/improvements`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "GET", "/v1/projects/{project_id}/harnesses/{harness_id}/improvements");
    }

    /**
     * @param {string} project_id
     * @param {string} harness_id
     * @param {Sikaru.ImprovementInput} request
     * @param {HarnessesClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnesses.startImprovement("project_id", "harness_id", {
     *         idempotency_key: "idempotency_key"
     *     })
     */
    public startImprovement(project_id: string, harness_id: string, request: Sikaru.ImprovementInput, requestOptions?: HarnessesClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__startImprovement(project_id, harness_id, request, requestOptions));
    }

    private async __startImprovement(project_id: string, harness_id: string, request: Sikaru.ImprovementInput, requestOptions?: HarnessesClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/improvements`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/harnesses/{harness_id}/improvements");
    }

    /**
     * @param {string} project_id
     * @param {string} harness_id
     * @param {string} job_id
     * @param {HarnessesClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnesses.getImprovement("project_id", "harness_id", "job_id")
     */
    public getImprovement(project_id: string, harness_id: string, job_id: string, requestOptions?: HarnessesClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__getImprovement(project_id, harness_id, job_id, requestOptions));
    }

    private async __getImprovement(project_id: string, harness_id: string, job_id: string, requestOptions?: HarnessesClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/improvements/${core.url.encodePathParam(job_id)}`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "GET", "/v1/projects/{project_id}/harnesses/{harness_id}/improvements/{job_id}");
    }

    /**
     * @param {string} project_id
     * @param {string} harness_id
     * @param {string} job_id
     * @param {Sikaru.ResumeImprovementInput | null} request
     * @param {HarnessesClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnesses.resumeImprovement("project_id", "harness_id", "job_id", {})
     */
    public resumeImprovement(project_id: string, harness_id: string, job_id: string, request: Sikaru.ResumeImprovementInput | null, requestOptions?: HarnessesClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__resumeImprovement(project_id, harness_id, job_id, request, requestOptions));
    }

    private async __resumeImprovement(project_id: string, harness_id: string, job_id: string, request: Sikaru.ResumeImprovementInput | null, requestOptions?: HarnessesClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/improvements/${core.url.encodePathParam(job_id)}/resume`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/harnesses/{harness_id}/improvements/{job_id}/resume");
    }

    /**
     * Reserved, unavailable model-training step; no learning job is submitted.
     *
     * @param {string} project_id
     * @param {string} harness_id
     * @param {HarnessesClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnesses.trainModelStub("project_id", "harness_id")
     */
    public trainModelStub(project_id: string, harness_id: string, requestOptions?: HarnessesClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__trainModelStub(project_id, harness_id, requestOptions));
    }

    private async __trainModelStub(project_id: string, harness_id: string, requestOptions?: HarnessesClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harnesses/${core.url.encodePathParam(harness_id)}/training`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/harnesses/{harness_id}/training");
    }
}
