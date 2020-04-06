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


case class GraderFeedback (
  // Serialized JSON for dataset metadata
  dataset: String,
  // Status of the grader
  status: Boolean,
  // Serialized JSON containing available notifications for the grader
  notifications: String,
  // Serialized YAML workflow spec
  workflowSpec: String,
  // Serialized JSON of submissions accepted by the grader
  submissionTypes: String
)

