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


case class SubmissionRetry (
  // List of submission IDs queued for evaluation
  queued: Option[Any] = None,
  // List of submission IDs failed to get queued
  failed: Option[List[Integer]] = None
)

