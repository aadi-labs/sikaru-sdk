
import type { BaseClientOptions, BaseRequestOptions } from "../../../../BaseClient.js";
import { normalizeClientOptionsWithAuth, type NormalizedClientOptionsWithAuth } from "../../../../BaseClient.js";
import * as core from "../../../../core/index.js";
import { mergeHeaders } from "../../../../core/headers.js";
import { mergeAdditionalBodyParameters } from "../../../../core/requestBody.js";
import * as environments from "../../../../environments.js";
import { handleNonStatusCodeError } from "../../../../errors/handleNonStatusCodeError.js";
import * as errors from "../../../../errors/index.js";
import * as Sikaru from "../../../index.js";

export declare namespace HarnessVersionsClient {
    export type Options = BaseClientOptions;

    export interface RequestOptions extends BaseRequestOptions {
    }
}

export class HarnessVersionsClient {
    protected readonly _options: NormalizedClientOptionsWithAuth<HarnessVersionsClient.Options>;

    constructor(options: HarnessVersionsClient.Options = {}) {

        this._options = normalizeClientOptionsWithAuth(options);
    }

    /**
     * @param {string} project_id
     * @param {Sikaru.CreateHarnessVersionRequest} request
     * @param {HarnessVersionsClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.harnessVersions.createHarnessVersion("project_id", {
     *         baseHarnessProfileId: "baseHarnessProfileId",
     *         compatibilityProfileId: "compatibilityProfileId",
     *         displayName: "displayName",
     *         harnessId: "harnessId",
     *         sourceArtifactId: "sourceArtifactId"
     *     })
     */
    public createHarnessVersion(project_id: string, request: Sikaru.CreateHarnessVersionRequest, requestOptions?: HarnessVersionsClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__createHarnessVersion(project_id, request, requestOptions));
    }

    private async __createHarnessVersion(project_id: string, request: Sikaru.CreateHarnessVersionRequest, requestOptions?: HarnessVersionsClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/harness-versions`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/harness-versions");
    }
}
