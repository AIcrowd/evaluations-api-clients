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


export interface GraderFeedback { 
    /**
     * Status of the grader
     */
    status: boolean;
    /**
     * Serialized YAML workflow spec
     */
    workflowSpec: string;
    /**
     * Serialized JSON of submissions accepted by the grader
     */
    submissionTypes: string;
}
