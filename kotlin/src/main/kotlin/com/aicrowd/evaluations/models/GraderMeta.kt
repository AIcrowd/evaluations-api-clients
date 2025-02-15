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
 * @param dataset Dataset metadata
 * @param notifications Notifications available for the grader
 * @param name Name of the grader
 * @param description Description of the grader
 * @param cluster_id Cluster to run the grader on
 * @param meta Additional meta data of the grader
 */
data class GraderMeta (
    /* Dataset metadata */
    val dataset: kotlin.Any? = null,
    /* Notifications available for the grader */
    val notifications: kotlin.Any? = null,
    /* Name of the grader */
    val name: kotlin.String? = null,
    /* Description of the grader */
    val description: kotlin.String? = null,
    /* Cluster to run the grader on */
    val cluster_id: kotlin.Int? = null,
    /* Additional meta data of the grader */
    val meta: kotlin.String? = null
) {

}

