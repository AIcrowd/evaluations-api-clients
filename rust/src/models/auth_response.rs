/* 
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct AuthResponse {
  /// Authorization token that should be used in the headers
  #[serde(rename = "Authorization")]
  authorization: Option<String>
}

impl AuthResponse {
  pub fn new() -> AuthResponse {
    AuthResponse {
      authorization: None
    }
  }

  pub fn set_authorization(&mut self, authorization: String) {
    self.authorization = Some(authorization);
  }

  pub fn with_authorization(mut self, authorization: String) -> AuthResponse {
    self.authorization = Some(authorization);
    self
  }

  pub fn authorization(&self) -> Option<&String> {
    self.authorization.as_ref()
  }

  pub fn reset_authorization(&mut self) {
    self.authorization = None;
  }

}



