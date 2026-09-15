
import type { BaseClientOptions, BaseRequestOptions } from "../../../../BaseClient.js";
import { normalizeClientOptionsWithAuth, type NormalizedClientOptionsWithAuth } from "../../../../BaseClient.js";
import * as core from "../../../../core/index.js";
import { mergeHeaders } from "../../../../core/headers.js";
import { mergeAdditionalBodyParameters } from "../../../../core/requestBody.js";
import * as environments from "../../../../environments.js";
import { handleNonStatusCodeError } from "../../../../errors/handleNonStatusCodeError.js";
import * as errors from "../../../../errors/index.js";
import * as Sikaru from "../../../index.js";

export declare namespace ModelGatewayClient {
    export type Options = BaseClientOptions;

    export interface RequestOptions extends BaseRequestOptions {
    }
}

export class ModelGatewayClient {
    protected readonly _options: NormalizedClientOptionsWithAuth<ModelGatewayClient.Options>;

    constructor(options: ModelGatewayClient.Options = {}) {

        this._options = normalizeClientOptionsWithAuth(options);
    }

    /**
     * @param {string} project_id
     * @param {string} provider
     * @param {Sikaru.ModelGatewayCaptureRequest} request
     * @param {ModelGatewayClient.RequestOptions} requestOptions - Request-specific configuration.
     *
     * @throws {@link Sikaru.UnprocessableEntityError}
     * @throws {@link errors.SikaruError}
     * @throws {@link errors.SikaruTimeoutError}
     *
     * @example
     *     await client.modelGateway.captureModelGatewayChatCompletion("project_id", "provider", {
     *         request: {
     *             "key": "value"
     *         }
     *     })
     */
    public captureModelGatewayChatCompletion(project_id: string, provider: string, request: Sikaru.ModelGatewayCaptureRequest, requestOptions?: ModelGatewayClient.RequestOptions): core.HttpResponsePromise<Record<string, unknown>> {
        return core.HttpResponsePromise.fromPromise(this.__captureModelGatewayChatCompletion(project_id, provider, request, requestOptions));
    }

    private async __captureModelGatewayChatCompletion(project_id: string, provider: string, request: Sikaru.ModelGatewayCaptureRequest, requestOptions?: ModelGatewayClient.RequestOptions): Promise<core.WithRawResponse<Record<string, unknown>>> {
        const _authRequest: core.AuthRequest = await this._options.authProvider.getAuthRequest();
        let _headers: core.Fetcher.Args["headers"] = mergeHeaders(_authRequest.headers, this._options?.headers, requestOptions?.headers);
        const _response = await core.fetcher({
            url: core.url.join(await core.Supplier.get(this._options.baseUrl) ?? (await core.Supplier.get(this._options.environment) ?? environments.SikaruEnvironment.Default), `v1/projects/${core.url.encodePathParam(project_id)}/model-gateway/${core.url.encodePathParam(provider)}/chat/completions/capture`),
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

        return handleNonStatusCodeError(_response.error, _response.rawResponse, "POST", "/v1/projects/{project_id}/model-gateway/{provider}/chat/completions/capture");
    }
}
