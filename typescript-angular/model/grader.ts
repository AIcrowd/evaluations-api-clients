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


export interface Grader { 
    /**
     * ID
     */
    readonly id?: number;
    /**
     * Creation time
     */
    readonly created?: Date;
    /**
     * Last updation time
     */
    readonly updated?: Date;
    /**
     * Grader archival status
     */
    readonly archived?: boolean;
    /**
     * Dataset metadata
     */
    readonly dataset?: any;
    /**
     * Cluster to run the grader on
     */
    clusterId?: number;
    /**
     * Description of the grader
     */
    readonly description?: string;
    /**
     * Argo workflow template spec
     */
    readonly workflowSpec?: any;
    /**
     * Git URL of the repository containing the code that will be used for the evaluation
     */
    evaluatorRepo: string;
    /**
     * Git branch/tag that should be used with the evaluator repository.
     */
    evaluatorRepoTag?: string;
    /**
     * Name of the grader
     */
    readonly name?: string;
    /**
     * Notifications available for the grader.
     */
    readonly notifications?: string;
    /**
     * Logs from argo workflow
     */
    readonly logs?: string;
    /**
     * Additional meta data of the grader
     */
    meta?: string;
    /**
     * Status of the grader - True if it ready, False otherwise
     */
    readonly status?: string;
    /**
     * List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
     */
    secrets?: any;
    /**
     * Name of the workflow used to setup grader
     */
    readonly wfName?: string;
    /**
     * Allowed extensions for the grader
     */
    readonly allowedExtensions?: any;
    /**
     * Workflow priority to assign
     */
    workflowPriority?: number;
    /**
     * Path to grader configuration (default: aicrowd.yaml)
     */
    configPath?: string;
    /**
     * Docker repo to use for grader images
     */
    dockerRepo?: string;
    /**
     * Context for grader files inside the repository
     */
    contextDir?: string;
    /**
     * User ID
     */
    readonly userId?: number;
    /**
     * Organisation ID
     */
    readonly organisationId?: number;
}
