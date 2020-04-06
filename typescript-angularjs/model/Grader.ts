/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import * as models from './models';

export interface Grader {
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
     * Dataset metadata
     */
    "dataset"?: any;
    /**
     * Cluster to run the grader on
     */
    "clusterId"?: number;
    /**
     * Argo workflow template spec
     */
    "workflowSpec"?: any;
    /**
     * Git URL of the repository containing the code that will be used for the evaluation
     */
    "evaluatorRepo": string;
    /**
     * Git branch/tag that should be used with the evaluator repository.
     */
    "evaluatorRepoTag"?: string;
    /**
     * Notifications available for the grader.
     */
    "notifications"?: string;
    /**
     * Logs from argo workflow
     */
    "logs"?: any;
    /**
     * Additional meta data of the grader
     */
    "meta"?: any;
    /**
     * Status of the grader - True if it ready, False otherwise
     */
    "status"?: string;
    /**
     * Type of submissions allowed on the grader
     */
    "submissionTypes"?: any;
    /**
     * User ID
     */
    "userId"?: number;
    /**
     * Organisation ID
     */
    "organisationId"?: number;
}

