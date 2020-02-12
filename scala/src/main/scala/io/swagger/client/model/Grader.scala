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

package io.swagger.client.model

import java.util.Date

case class Grader (
  // ID
  id: Option[Integer] = None,
  // Creation time
  created: Option[Date] = None,
  // Last updation time
  updated: Option[Date] = None,
  // S3 link of the Dataset
  datasetUrl: Option[String] = None,
  // git/http
  codeAccessMode: Option[String] = None,
  // SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
  codeAccessAuthKey: Option[String] = None,
  // Cluster to run the grader on
  clusterId: Option[Integer] = None,
  // Docker registry username
  dockerUsername: Option[String] = None,
  // Docker registry password
  dockerPassword: Option[String] = None,
  // Docker registry URL
  dockerRegistry: Option[String] = None,
  // Argo workflow template spec
  workflowSpec: Option[Any] = None,
  // S3 link to the zip file containing the code that will be used for the evaluation
  evaluationCode: Option[String] = None,
  // Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
  storageCapacity: Option[String] = None,
  // Additional meta data of the grader
  meta: Option[Any] = None,
  // Status of the grader - True if it ready, False otherwise
  status: Option[Boolean] = None,
  // User ID
  userId: Option[Integer] = None,
  // Organisation ID
  organisationId: Option[Integer] = None
)

