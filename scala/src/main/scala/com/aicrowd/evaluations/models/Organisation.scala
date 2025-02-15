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

import java.util.Date

case class Organisation (
  // ID
  id: Option[Integer] = None,
  // Organisation Name
  name: String,
  // Point of contact email
  pocEmail: String,
  // Creation Time
  createdOn: Option[Date] = None,
  // Total assigned evaluation quota
  totalQuota: Option[Integer] = None,
  // Available evaluation quota
  quota: Option[Integer] = None
)

