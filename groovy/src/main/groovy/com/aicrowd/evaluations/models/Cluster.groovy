package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class Cluster {

  /* ID */
  Integer id = null

  /* Creation time */
  Date created = null

  /* Last updation time */
  Date updated = null

  /* Remote address used to connect to the cluster */
  String remoteAddress = null

  /* Authentication needed for the cluster */
  String authToken = null

  /* Storage class to use for datasets */
  String storageClass = null

  /* Readiness of the cluster */
  Boolean status = null

  /* Additional metadata */
  Object meta = null

  /* User ID */
  Integer userId = null

  /* Organisation ID */
  Integer organisationId = null
  

}

