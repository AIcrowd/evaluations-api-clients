/*
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package aicrowd_evaluations

import (
	"time"
)

type Cluster struct {
	// ID
	Id int32 `json:"id,omitempty"`
	// Creation time
	Created time.Time `json:"created,omitempty"`
	// Last updation time
	Updated time.Time `json:"updated,omitempty"`
	// Remote address used to connect to the cluster
	RemoteAddress string `json:"remote_address"`
	// Authentication needed for the cluster
	AuthToken string `json:"auth_token"`
	// Storage class to use for datasets
	StorageClass string `json:"storage_class,omitempty"`
	// Readiness of the cluster
	Status bool `json:"status,omitempty"`
	// Additional metadata
	Meta *interface{} `json:"meta,omitempty"`
	// User ID
	UserId int32 `json:"user_id,omitempty"`
	// Organisation ID
	OrganisationId int32 `json:"organisation_id,omitempty"`
}
