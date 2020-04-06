package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class GraderFeedback {

  /* Status of the grader */
  Boolean status = null

  /* Serialized YAML workflow spec */
  String workflowSpec = null

  /* Serialized JSON of submissions accepted by the grader */
  String submissionTypes = null
  

}

