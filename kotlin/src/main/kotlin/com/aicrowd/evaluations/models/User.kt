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
 * @param email Email
 * @param admin Admin Boolean
 * @param created_on Creation Time
 * @param password_hash Hashed Password
 * @param total_quota Total assigned evaluation quota
 * @param quota Available evaluation quota
 * @param organisation_id Organisation identifier
 * @param password user password
 */
data class User (
    /* Email */
    val email: kotlin.String,
    /* Organisation identifier */
    val organisation_id: kotlin.Int,
    /* user password */
    val password: kotlin.String,
    /* ID */
    val id: kotlin.Int? = null,
    /* Admin Boolean */
    val admin: kotlin.Boolean? = null,
    /* Creation Time */
    val created_on: java.time.LocalDateTime? = null,
    /* Hashed Password */
    val password_hash: kotlin.String? = null,
    /* Total assigned evaluation quota */
    val total_quota: kotlin.Int? = null,
    /* Available evaluation quota */
    val quota: kotlin.Int? = null
) {

}

