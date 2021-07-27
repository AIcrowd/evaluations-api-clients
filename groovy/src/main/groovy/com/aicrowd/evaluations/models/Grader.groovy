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

  /* Grader archival status */
  Boolean archived = null

  /* Dataset metadata */
  Object dataset = null

  /* Cluster to run the grader on */
  Integer clusterId = null

  /* Description of the grader */
  String description = null

  /* Argo workflow template spec */
  Object workflowSpec = null

  /* Git URL of the repository containing the code that will be used for the evaluation */
  String evaluatorRepo = null

  /* Git branch/tag that should be used with the evaluator repository. */
  String evaluatorRepoTag = null

  /* Name of the grader */
  String name = null

  /* Notifications available for the grader. */
  String notifications = null

  /* Logs from argo workflow */
  String logs = null

  /* Additional meta data of the grader */
  String meta = null

  /* Status of the grader - True if it ready, False otherwise */
  String status = null

  /* List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml */
  Object secrets = null

  /* Name of the workflow used to setup grader */
  String wfName = null

  /* Allowed extensions for the grader */
  Object allowedExtensions = null

  /* Workflow priority to assign */
  Integer workflowPriority = null

  /* Path to grader configuration (default: aicrowd.yaml) */
  String configPath = null

  /* User ID */
  Integer userId = null

  /* Organisation ID */
  Integer organisationId = null
  

}

