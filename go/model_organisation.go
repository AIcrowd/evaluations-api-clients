/*
 * AIcrowd Evaluations API
 *
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package aicrowd_evaluations

import (
	"time"
)

type Organisation struct {
	// ID
	Id int32 `json:"id,omitempty"`
	// Organisation Name
	Name string `json:"name"`
	// Point of contact email
	PocEmail string `json:"poc_email"`
	// Creation Time
	CreatedOn time.Time `json:"created_on,omitempty"`
	// Total assigned evaluation quota
	TotalQuota int32 `json:"total_quota,omitempty"`
	// Available evaluation quota
	Quota int32 `json:"quota,omitempty"`
}
