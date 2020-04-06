/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package com.aicrowd.evaluations.models

import java.util.Date

case class Grader (
  // ID
  id: Option[Integer] = None,
  // Creation time
  created: Option[Date] = None,
  // Last updation time
  updated: Option[Date] = None,
  // Dataset metadata
  dataset: Option[Any] = None,
  // Cluster to run the grader on
  clusterId: Option[Integer] = None,
  // Argo workflow template spec
  workflowSpec: Option[Any] = None,
  // Git URL of the repository containing the code that will be used for the evaluation
  evaluatorRepo: String,
  // Git branch/tag that should be used with the evaluator repository.
  evaluatorRepoTag: Option[String] = None,
  // Logs from argo workflow
  logs: Option[Any] = None,
  // Additional meta data of the grader
  meta: Option[Any] = None,
  // Status of the grader - True if it ready, False otherwise
  status: Option[String] = None,
  // Type of submissions allowed on the grader
  submissionTypes: Option[Any] = None,
  // User ID
  userId: Option[Integer] = None,
  // Organisation ID
  organisationId: Option[Integer] = None
)

