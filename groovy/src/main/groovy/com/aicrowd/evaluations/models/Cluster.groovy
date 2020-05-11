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

  /* Docker registry username */
  String dockerUsername = null

  /* Docker registry URL. Dockerhub is used by default. */
  String dockerRegistry = null

  /* Kubernetes namespace to run the workflows in */
  String namespace = null

  /* Storage class to use for datasets */
  String storageClass = null

  /* Readiness of the cluster */
  Boolean status = null

  /* Name of the workflow used to setup grader */
  String wfName = null

  /* User ID */
  Integer userId = null

  /* Organisation ID */
  Integer organisationId = null
  

}

