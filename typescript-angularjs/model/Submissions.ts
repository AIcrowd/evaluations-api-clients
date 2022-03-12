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

export interface Submissions {
    /**
     * ID
     */
    "id"?: number;
    /**
     * Creation time
     */
    "created"?: Date;
    /**
     * Last updation time
     */
    "updated"?: Date;
    /**
     * Grader identifier
     */
    "graderId": number;
    /**
     * URL to the submission code
     */
    "submissionData"?: any;
    /**
     * Current status of the submission
     */
    "status"?: string;
    /**
     * S3 link of the output (available after the evaluation)
     */
    "output"?: string;
    /**
     * Array of any additional outputs
     */
    "additionalOutputs"?: any;
    /**
     * S3 link of the STDOUT of the evaluation
     */
    "logs"?: string;
    /**
     * Evaluation start time
     */
    "started"?: Date;
    /**
     * Evaluation end time
     */
    "ended"?: Date;
    /**
     * Additional meta data of the grader
     */
    "meta"?: string;
    /**
     * Name of the workflow used to evaluate submission
     */
    "wfName"?: string;
    /**
     * Workflow priority to assign
     */
    "workflowPriority"?: number;
    /**
     * Remove steps like build-image, services, etc from the workflow. Only valid for retries
     */
    "minimalRun"?: boolean;
    /**
     * User ID
     */
    "userId"?: number;
    /**
     * Organisation ID
     */
    "organisationId"?: number;
}

