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

case class Cluster (
  // ID
  id: Option[Integer] = None,
  // Creation time
  created: Option[Date] = None,
  // Last updation time
  updated: Option[Date] = None,
  // Remote address used to connect to the cluster
  remoteAddress: String,
  // Authentication needed for the cluster
  authToken: String,
  // Storage class to use for datasets
  storageClass: Option[String] = None,
  // Readiness of the cluster
  status: Option[Boolean] = None,
  // Additional metadata
  meta: Option[Any] = None,
  // User ID
  userId: Option[Integer] = None,
  // Organisation ID
  organisationId: Option[Integer] = None
)

