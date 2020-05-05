package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class GraderMeta {

  /* Dataset metadata */
  Object dataset = null

  /* Notifications available for the grader */
  Object notifications = null

  /* Name of the grader */
  String name = null

  /* Description of the grader */
  String description = null

  /* Cluster to run the grader on */
  Integer clusterId = null

  /* Additional meta data of the grader */
  String meta = null
  

}

