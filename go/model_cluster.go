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
	// Docker registry username
	DockerUsername string `json:"docker_username"`
	// Docker registry URL. Dockerhub is used by default.
	DockerRegistry string `json:"docker_registry,omitempty"`
	// Kubernetes namespace to run the workflows in
	Namespace string `json:"namespace,omitempty"`
	// Storage class to use for datasets
	StorageClass string `json:"storage_class,omitempty"`
	// Readiness of the cluster
	Status bool `json:"status,omitempty"`
	// Name of the workflow used to setup grader
	WfName string `json:"wf_name,omitempty"`
	// User ID
	UserId int32 `json:"user_id,omitempty"`
	// Organisation ID
	OrganisationId int32 `json:"organisation_id,omitempty"`
}
