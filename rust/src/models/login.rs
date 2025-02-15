/* 
 * AIcrowd Evaluations API
 *
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct Login {
  /// Email address of the user
  #[serde(rename = "email")]
  email: String,
  /// Password corresponding to the Email address
  #[serde(rename = "password")]
  password: String
}

impl Login {
  pub fn new(email: String, password: String) -> Login {
    Login {
      email: email,
      password: password
    }
  }

  pub fn set_email(&mut self, email: String) {
    self.email = email;
  }

  pub fn with_email(mut self, email: String) -> Login {
    self.email = email;
    self
  }

  pub fn email(&self) -> &String {
    &self.email
  }


  pub fn set_password(&mut self, password: String) {
    self.password = password;
  }

  pub fn with_password(mut self, password: String) -> Login {
    self.password = password;
    self
  }

  pub fn password(&self) -> &String {
    &self.password
  }


}



