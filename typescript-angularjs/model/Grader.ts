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
     * Grader archival status
     */
    "archived"?: boolean;
    /**
     * Dataset metadata
     */
    "dataset"?: any;
    /**
     * Cluster to run the grader on
     */
    "clusterId"?: number;
    /**
     * Description of the grader
     */
    "description"?: string;
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
     * Name of the grader
     */
    "name"?: string;
    /**
     * Notifications available for the grader.
     */
    "notifications"?: string;
    /**
     * Logs from argo workflow
     */
    "logs"?: string;
    /**
     * Additional meta data of the grader
     */
    "meta"?: string;
    /**
     * Status of the grader - True if it ready, False otherwise
     */
    "status"?: string;
    /**
     * List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
     */
    "secrets"?: any;
    /**
     * Name of the workflow used to setup grader
     */
    "wfName"?: string;
    /**
     * Allowed extensions for the grader
     */
    "allowedExtensions"?: any;
    /**
     * Workflow priority to assign
     */
    "workflowPriority"?: number;
    /**
     * Path to grader configuration (default: aicrowd.yaml)
     */
    "configPath"?: string;
    /**
     * User ID
     */
    "userId"?: number;
    /**
     * Organisation ID
     */
    "organisationId"?: number;
}

