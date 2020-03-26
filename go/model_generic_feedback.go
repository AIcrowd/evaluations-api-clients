/*
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package aicrowd_evaluations

type GenericFeedback struct {
	// Status of the operation
	Status bool `json:"status"`
	// Additional metadata to add
	Meta *interface{} `json:"meta,omitempty"`
}
