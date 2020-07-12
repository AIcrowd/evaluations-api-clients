/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import * as models from './models';

export interface SubmissionRetry {
    /**
     * List of submission IDs queued for evaluation
     */
    "queued"?: any;
    /**
     * List of submission IDs failed to get queued
     */
    "failed"?: Array<number>;
}

