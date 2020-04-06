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
 * @param name Organisation Name
 * @param poc_email Point of contact email
 * @param created_on Creation Time
 * @param total_quota Total assigned evaluation quota
 * @param quota Available evaluation quota
 */
data class Organisation (
    /* Organisation Name */
    val name: kotlin.String,
    /* Point of contact email */
    val poc_email: kotlin.String,
    /* ID */
    val id: kotlin.Int? = null,
    /* Creation Time */
    val created_on: java.time.LocalDateTime? = null,
    /* Total assigned evaluation quota */
    val total_quota: kotlin.Int? = null,
    /* Available evaluation quota */
    val quota: kotlin.Int? = null
) {

}

