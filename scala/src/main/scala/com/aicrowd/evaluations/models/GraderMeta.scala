/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package com.aicrowd.evaluations.models


case class GraderMeta (
  // Dataset metadata
  dataset: Option[Any] = None,
  // Notifications available for the grader
  notifications: Option[Any] = None,
  // Name of the grader
  name: Option[String] = None,
  // Description of the grader
  description: Option[String] = None,
  // Cluster to run the grader on
  clusterId: Option[Integer] = None,
  // Additional meta data of the grader
  meta: Option[String] = None
)

