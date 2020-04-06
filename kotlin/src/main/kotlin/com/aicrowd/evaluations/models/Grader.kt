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
package com.aicrowd.evaluations.models


/**
 * 
 * @param id ID
 * @param created Creation time
 * @param updated Last updation time
 * @param dataset Dataset metadata
 * @param cluster_id Cluster to run the grader on
 * @param workflow_spec Argo workflow template spec
 * @param evaluator_repo Git URL of the repository containing the code that will be used for the evaluation
 * @param evaluator_repo_tag Git branch/tag that should be used with the evaluator repository.
 * @param logs Logs from argo workflow
 * @param meta Additional meta data of the grader
 * @param status Status of the grader - True if it ready, False otherwise
 * @param submission_types Type of submissions allowed on the grader
 * @param user_id User ID
 * @param organisation_id Organisation ID
 */
data class Grader (
    /* Git URL of the repository containing the code that will be used for the evaluation */
    val evaluator_repo: kotlin.String,
    /* ID */
    val id: kotlin.Int? = null,
    /* Creation time */
    val created: java.time.LocalDateTime? = null,
    /* Last updation time */
    val updated: java.time.LocalDateTime? = null,
    /* Dataset metadata */
    val dataset: kotlin.Any? = null,
    /* Cluster to run the grader on */
    val cluster_id: kotlin.Int? = null,
    /* Argo workflow template spec */
    val workflow_spec: kotlin.Any? = null,
    /* Git branch/tag that should be used with the evaluator repository. */
    val evaluator_repo_tag: kotlin.String? = null,
    /* Logs from argo workflow */
    val logs: kotlin.Any? = null,
    /* Additional meta data of the grader */
    val meta: kotlin.Any? = null,
    /* Status of the grader - True if it ready, False otherwise */
    val status: kotlin.String? = null,
    /* Type of submissions allowed on the grader */
    val submission_types: kotlin.Any? = null,
    /* User ID */
    val user_id: kotlin.Int? = null,
    /* Organisation ID */
    val organisation_id: kotlin.Int? = null
) {

}

