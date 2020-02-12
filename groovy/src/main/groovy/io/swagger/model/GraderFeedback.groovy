package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class GraderFeedback {

  /* Status of the grader */
  Boolean status = null

  /* Serialized YAML workflow spec */
  String workflowSpec = null
  

}

