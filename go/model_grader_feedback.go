/*
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package aicrowd_evaluations

type GraderFeedback struct {
	// Serialized JSON for dataset metadata
	Dataset string `json:"dataset"`
	// Status of the grader
	Status bool `json:"status"`
	// Serialized YAML workflow spec
	WorkflowSpec string `json:"workflow_spec"`
	// Serialized JSON of submissions accepted by the grader
	SubmissionTypes string `json:"submission_types"`
}
