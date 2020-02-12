/*
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * API version: 1.0.0
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

type Login struct {
	// The email address
	Email string `json:"email"`
	// The user password 
	Password string `json:"password"`
}
