package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class GraderFeedback {

  /* Serialized JSON for dataset metadata */
  String dataset = null

  /* Status of the grader */
  Boolean status = null

  /* Serialized JSON containing available notifications for the grader */
  String notifications = null

  /* Serialized YAML workflow spec */
  String workflowSpec = null

  /* Serialized JSON of submissions accepted by the grader */
  String submissionTypes = null
  

}

