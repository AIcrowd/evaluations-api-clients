package com.aicrowd.evaluations.models;

import groovy.transform.Canonical
import com.aicrowd.evaluations.models.Date;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
@Canonical
class Grader {

  /* ID */
  Integer id = null

  /* Creation time */
  Date created = null

  /* Last updation time */
  Date updated = null

  /* S3 link of the Dataset */
  String datasetUrl = null

  /* git/http */
  String codeAccessMode = null

  /* Cluster to run the grader on */
  Integer clusterId = null

  /* Docker registry username */
  String dockerUsername = null

  /* Docker registry password */
  String dockerPassword = null

  /* Docker registry URL. Dockerhub is used by default. */
  String dockerRegistry = null

  /* Argo workflow template spec */
  Object workflowSpec = null

  /* S3 link to the zip file containing the code that will be used for the evaluation */
  String evaluationCode = null

  /* Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. */
  String storageCapacity = null

  /* Logs from argo workflow */
  Object logs = null

  /* Additional meta data of the grader */
  Object meta = null

  /* Status of the grader - True if it ready, False otherwise */
  String status = null

  /* User ID */
  Integer userId = null

  /* Organisation ID */
  Integer organisationId = null
  

}

