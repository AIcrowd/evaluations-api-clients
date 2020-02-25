package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.Date;
@Canonical
class Submissions {

  /* ID */
  Integer id = null

  /* Creation time */
  Date created = null

  /* Last updation time */
  Date updated = null

  /* Participant identifier */
  Integer participantId = null

  /* Round identifier */
  Integer roundId = null

  /* Grader identifier */
  Integer graderId = null

  /* URL to the submission code */
  String submissionCode = null

  /* Current status of the submission */
  String status = null

  /* S3 link of the output (available after the evaluation) */
  String output = null

  /* Array of any additional outputs */
  Object additionalOutputs = null

  /* S3 link of the STDOUT of the evaluation */
  Object logs = null

  /* Evaluation start time */
  Date started = null

  /* Evaluation end time */
  Date ended = null

  /* Additional meta-data */
  Object meta = null

  /* User ID */
  Integer userId = null

  /* Organisation ID */
  Integer organisationId = null
  

}

