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
package com.aicrowd.evaluations.models


/**
 * 
 * @param id ID
 * @param created Creation time
 * @param updated Last updation time
 * @param remote_address Remote address used to connect to the cluster
 * @param auth_token Authentication needed for the cluster
 * @param docker_username Docker registry username
 * @param docker_password Docker registry password
 * @param docker_registry Docker registry URL. Dockerhub is used by default.
 * @param storage_class Storage class to use for datasets
 * @param status Readiness of the cluster
 * @param wf_name Name of the workflow used to setup grader
 * @param user_id User ID
 * @param organisation_id Organisation ID
 */
data class Cluster (
    /* Remote address used to connect to the cluster */
    val remote_address: kotlin.String,
    /* Authentication needed for the cluster */
    val auth_token: kotlin.String,
    /* Docker registry username */
    val docker_username: kotlin.String,
    /* Docker registry password */
    val docker_password: kotlin.String,
    /* ID */
    val id: kotlin.Int? = null,
    /* Creation time */
    val created: java.time.LocalDateTime? = null,
    /* Last updation time */
    val updated: java.time.LocalDateTime? = null,
    /* Docker registry URL. Dockerhub is used by default. */
    val docker_registry: kotlin.String? = null,
    /* Storage class to use for datasets */
    val storage_class: kotlin.String? = null,
    /* Readiness of the cluster */
    val status: kotlin.Boolean? = null,
    /* Name of the workflow used to setup grader */
    val wf_name: kotlin.String? = null,
    /* User ID */
    val user_id: kotlin.Int? = null,
    /* Organisation ID */
    val organisation_id: kotlin.Int? = null
) {

}

