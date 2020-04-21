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

type Grader struct {
	// ID
	Id int32 `json:"id,omitempty"`
	// Creation time
	Created time.Time `json:"created,omitempty"`
	// Last updation time
	Updated time.Time `json:"updated,omitempty"`
	// Dataset metadata
	Dataset *interface{} `json:"dataset,omitempty"`
	// Cluster to run the grader on
	ClusterId int32 `json:"cluster_id,omitempty"`
	// Description of the grader
	Description string `json:"description,omitempty"`
	// Argo workflow template spec
	WorkflowSpec *interface{} `json:"workflow_spec,omitempty"`
	// Git URL of the repository containing the code that will be used for the evaluation
	EvaluatorRepo string `json:"evaluator_repo"`
	// Git branch/tag that should be used with the evaluator repository.
	EvaluatorRepoTag string `json:"evaluator_repo_tag,omitempty"`
	// Name of the grader
	Name string `json:"name,omitempty"`
	// Notifications available for the grader.
	Notifications string `json:"notifications,omitempty"`
	// Logs from argo workflow
	Logs *interface{} `json:"logs,omitempty"`
	// Additional meta data of the grader
	Meta *interface{} `json:"meta,omitempty"`
	// Status of the grader - True if it ready, False otherwise
	Status string `json:"status,omitempty"`
	// List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
	Secrets *interface{} `json:"secrets,omitempty"`
	// Type of submissions allowed on the grader
	SubmissionTypes *interface{} `json:"submission_types,omitempty"`
	// User ID
	UserId int32 `json:"user_id,omitempty"`
	// Organisation ID
	OrganisationId int32 `json:"organisation_id,omitempty"`
}
