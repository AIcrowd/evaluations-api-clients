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
 * @param grader_id Grader identifier
 * @param submission_data URL to the submission code
 * @param status Current status of the submission
 * @param output S3 link of the output (available after the evaluation)
 * @param additional_outputs Array of any additional outputs
 * @param logs S3 link of the STDOUT of the evaluation
 * @param started Evaluation start time
 * @param ended Evaluation end time
 * @param meta Additional meta data of the grader
 * @param wf_name Name of the workflow used to evaluate submission
 * @param workflow_priority Workflow priority to assign
 * @param minimal_run Remove steps like build-image, services, etc from the workflow. Only valid for retries
 * @param user_id User ID
 * @param organisation_id Organisation ID
 */
data class Submissions (
    /* Grader identifier */
    val grader_id: kotlin.Int,
    /* ID */
    val id: kotlin.Int? = null,
    /* Creation time */
    val created: java.time.LocalDateTime? = null,
    /* Last updation time */
    val updated: java.time.LocalDateTime? = null,
    /* URL to the submission code */
    val submission_data: kotlin.Any? = null,
    /* Current status of the submission */
    val status: kotlin.String? = null,
    /* S3 link of the output (available after the evaluation) */
    val output: kotlin.String? = null,
    /* Array of any additional outputs */
    val additional_outputs: kotlin.Any? = null,
    /* S3 link of the STDOUT of the evaluation */
    val logs: kotlin.String? = null,
    /* Evaluation start time */
    val started: java.time.LocalDateTime? = null,
    /* Evaluation end time */
    val ended: java.time.LocalDateTime? = null,
    /* Additional meta data of the grader */
    val meta: kotlin.String? = null,
    /* Name of the workflow used to evaluate submission */
    val wf_name: kotlin.String? = null,
    /* Workflow priority to assign */
    val workflow_priority: kotlin.Int? = null,
    /* Remove steps like build-image, services, etc from the workflow. Only valid for retries */
    val minimal_run: kotlin.Boolean? = null,
    /* User ID */
    val user_id: kotlin.Int? = null,
    /* Organisation ID */
    val organisation_id: kotlin.Int? = null
) {

}

