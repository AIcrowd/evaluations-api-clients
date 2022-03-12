package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class Submissions {

  /* ID */
  Integer id = null

  /* Creation time */
  Date created = null

  /* Last updation time */
  Date updated = null

  /* Grader identifier */
  Integer graderId = null

  /* URL to the submission code */
  Object submissionData = null

  /* Current status of the submission */
  String status = null

  /* S3 link of the output (available after the evaluation) */
  String output = null

  /* Array of any additional outputs */
  Object additionalOutputs = null

  /* S3 link of the STDOUT of the evaluation */
  String logs = null

  /* Evaluation start time */
  Date started = null

  /* Evaluation end time */
  Date ended = null

  /* Additional meta data of the grader */
  String meta = null

  /* Name of the workflow used to evaluate submission */
  String wfName = null

  /* Workflow priority to assign */
  Integer workflowPriority = null

  /* Remove steps like build-image, services, etc from the workflow. Only valid for retries */
  Boolean minimalRun = null

  /* User ID */
  Integer userId = null

  /* Organisation ID */
  Integer organisationId = null
  

}

