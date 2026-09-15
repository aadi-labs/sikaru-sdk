
import * as core from "../../core/index.js";
import * as errors from "../../errors/index.js";
import * as Sikaru from "../index.js";

export class UnprocessableEntityError extends errors.SikaruError {
    declare public readonly body: Sikaru.HttpValidationError;

    constructor(body: Sikaru.HttpValidationError, rawResponse?: core.RawResponse) {
        super({
            message: "UnprocessableEntityError",
            statusCode: 422,
            body: body,
            rawResponse: rawResponse
        });
        Object.setPrototypeOf(this, new.target.prototype);
        if (Error.captureStackTrace) {
            Error.captureStackTrace(this, this.constructor);
        }

        this.name = "UnprocessableEntityError";
    }
}
