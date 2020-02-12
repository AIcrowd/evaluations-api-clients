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
package io.swagger.client.models


/**
 * 
 * @param id ID
 * @param created Creation time
 * @param updated Last updation time
 * @param dataset_url S3 link of the Dataset
 * @param code_access_mode git/http
 * @param code_access_auth_key SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
 * @param cluster_id Cluster to run the grader on
 * @param docker_username Docker registry username
 * @param docker_password Docker registry password
 * @param docker_registry Docker registry URL
 * @param workflow_spec Argo workflow template spec
 * @param evaluation_code S3 link to the zip file containing the code that will be used for the evaluation
 * @param storage_capacity Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
 * @param meta Additional meta data of the grader
 * @param status Status of the grader - True if it ready, False otherwise
 * @param user_id User ID
 * @param organisation_id Organisation ID
 */
data class Grader (
    /* ID */
    val id: kotlin.Int? = null,
    /* Creation time */
    val created: java.time.LocalDateTime? = null,
    /* Last updation time */
    val updated: java.time.LocalDateTime? = null,
    /* S3 link of the Dataset */
    val dataset_url: kotlin.String? = null,
    /* git/http */
    val code_access_mode: kotlin.String? = null,
    /* SSH private key if using git or HTTP Auth token if using HTTP to access the submission code */
    val code_access_auth_key: kotlin.String? = null,
    /* Cluster to run the grader on */
    val cluster_id: kotlin.Int? = null,
    /* Docker registry username */
    val docker_username: kotlin.String? = null,
    /* Docker registry password */
    val docker_password: kotlin.String? = null,
    /* Docker registry URL */
    val docker_registry: kotlin.String? = null,
    /* Argo workflow template spec */
    val workflow_spec: kotlin.Any? = null,
    /* S3 link to the zip file containing the code that will be used for the evaluation */
    val evaluation_code: kotlin.String? = null,
    /* Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. */
    val storage_capacity: kotlin.String? = null,
    /* Additional meta data of the grader */
    val meta: kotlin.Any? = null,
    /* Status of the grader - True if it ready, False otherwise */
    val status: kotlin.Boolean? = null,
    /* User ID */
    val user_id: kotlin.Int? = null,
    /* Organisation ID */
    val organisation_id: kotlin.Int? = null
) {

}

