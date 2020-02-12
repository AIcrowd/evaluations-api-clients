/*
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

import (
	"time"
)

type Grader struct {
	// ID
	Id int32 `json:"id,omitempty"`
	// Creation time
	Created time.Time `json:"created,omitempty"`
	// Last updation time
	Updated time.Time `json:"updated,omitempty"`
	// S3 link of the Dataset
	DatasetUrl string `json:"dataset_url,omitempty"`
	// git/http
	CodeAccessMode string `json:"code_access_mode,omitempty"`
	// SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
	CodeAccessAuthKey string `json:"code_access_auth_key,omitempty"`
	// Cluster to run the grader on
	ClusterId int32 `json:"cluster_id,omitempty"`
	// Docker registry username
	DockerUsername string `json:"docker_username,omitempty"`
	// Docker registry password
	DockerPassword string `json:"docker_password,omitempty"`
	// Docker registry URL
	DockerRegistry string `json:"docker_registry,omitempty"`
	// Argo workflow template spec
	WorkflowSpec *interface{} `json:"workflow_spec,omitempty"`
	// S3 link to the zip file containing the code that will be used for the evaluation
	EvaluationCode string `json:"evaluation_code,omitempty"`
	// Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
	StorageCapacity string `json:"storage_capacity,omitempty"`
	// Additional meta data of the grader
	Meta *interface{} `json:"meta,omitempty"`
	// Status of the grader - True if it ready, False otherwise
	Status bool `json:"status,omitempty"`
	// User ID
	UserId int32 `json:"user_id,omitempty"`
	// Organisation ID
	OrganisationId int32 `json:"organisation_id,omitempty"`
}
