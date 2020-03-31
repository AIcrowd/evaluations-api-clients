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
     * S3 link of the Dataset
     */
    "datasetUrl"?: string;
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
     * Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
     */
    "storageCapacity"?: string;
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
     * User ID
     */
    "userId"?: number;
    /**
     * Organisation ID
     */
    "organisationId"?: number;
}

