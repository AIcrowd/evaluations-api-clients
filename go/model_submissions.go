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

type Submissions struct {
	// ID
	Id int32 `json:"id,omitempty"`
	// Creation time
	Created time.Time `json:"created,omitempty"`
	// Last updation time
	Updated time.Time `json:"updated,omitempty"`
	// Participant identifier
	ParticipantId int32 `json:"participant_id,omitempty"`
	// Round identifier
	RoundId int32 `json:"round_id,omitempty"`
	// Grader identifier
	GraderId int32 `json:"grader_id"`
	// URL to the submission code
	SubmissionData *interface{} `json:"submission_data,omitempty"`
	// Current status of the submission
	Status string `json:"status,omitempty"`
	// S3 link of the output (available after the evaluation)
	Output string `json:"output,omitempty"`
	// Array of any additional outputs
	AdditionalOutputs *interface{} `json:"additional_outputs,omitempty"`
	// S3 link of the STDOUT of the evaluation
	Logs *interface{} `json:"logs,omitempty"`
	// Evaluation start time
	Started time.Time `json:"started,omitempty"`
	// Evaluation end time
	Ended time.Time `json:"ended,omitempty"`
	// Additional meta-data
	Meta *interface{} `json:"meta,omitempty"`
	// User ID
	UserId int32 `json:"user_id,omitempty"`
	// Organisation ID
	OrganisationId int32 `json:"organisation_id,omitempty"`
}
