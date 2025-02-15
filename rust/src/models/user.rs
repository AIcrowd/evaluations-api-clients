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
pub struct User {
  /// ID
  #[serde(rename = "id")]
  id: Option<i32>,
  /// Email
  #[serde(rename = "email")]
  email: String,
  /// Admin Boolean
  #[serde(rename = "admin")]
  admin: Option<bool>,
  /// Creation Time
  #[serde(rename = "created_on")]
  created_on: Option<String>,
  /// Hashed Password
  #[serde(rename = "password_hash")]
  password_hash: Option<String>,
  /// Total assigned evaluation quota
  #[serde(rename = "total_quota")]
  total_quota: Option<i32>,
  /// Available evaluation quota
  #[serde(rename = "quota")]
  quota: Option<i32>,
  /// Organisation identifier
  #[serde(rename = "organisation_id")]
  organisation_id: i32,
  /// user password
  #[serde(rename = "password")]
  password: String
}

impl User {
  pub fn new(email: String, organisation_id: i32, password: String) -> User {
    User {
      id: None,
      email: email,
      admin: None,
      created_on: None,
      password_hash: None,
      total_quota: None,
      quota: None,
      organisation_id: organisation_id,
      password: password
    }
  }

  pub fn set_id(&mut self, id: i32) {
    self.id = Some(id);
  }

  pub fn with_id(mut self, id: i32) -> User {
    self.id = Some(id);
    self
  }

  pub fn id(&self) -> Option<&i32> {
    self.id.as_ref()
  }

  pub fn reset_id(&mut self) {
    self.id = None;
  }

  pub fn set_email(&mut self, email: String) {
    self.email = email;
  }

  pub fn with_email(mut self, email: String) -> User {
    self.email = email;
    self
  }

  pub fn email(&self) -> &String {
    &self.email
  }


  pub fn set_admin(&mut self, admin: bool) {
    self.admin = Some(admin);
  }

  pub fn with_admin(mut self, admin: bool) -> User {
    self.admin = Some(admin);
    self
  }

  pub fn admin(&self) -> Option<&bool> {
    self.admin.as_ref()
  }

  pub fn reset_admin(&mut self) {
    self.admin = None;
  }

  pub fn set_created_on(&mut self, created_on: String) {
    self.created_on = Some(created_on);
  }

  pub fn with_created_on(mut self, created_on: String) -> User {
    self.created_on = Some(created_on);
    self
  }

  pub fn created_on(&self) -> Option<&String> {
    self.created_on.as_ref()
  }

  pub fn reset_created_on(&mut self) {
    self.created_on = None;
  }

  pub fn set_password_hash(&mut self, password_hash: String) {
    self.password_hash = Some(password_hash);
  }

  pub fn with_password_hash(mut self, password_hash: String) -> User {
    self.password_hash = Some(password_hash);
    self
  }

  pub fn password_hash(&self) -> Option<&String> {
    self.password_hash.as_ref()
  }

  pub fn reset_password_hash(&mut self) {
    self.password_hash = None;
  }

  pub fn set_total_quota(&mut self, total_quota: i32) {
    self.total_quota = Some(total_quota);
  }

  pub fn with_total_quota(mut self, total_quota: i32) -> User {
    self.total_quota = Some(total_quota);
    self
  }

  pub fn total_quota(&self) -> Option<&i32> {
    self.total_quota.as_ref()
  }

  pub fn reset_total_quota(&mut self) {
    self.total_quota = None;
  }

  pub fn set_quota(&mut self, quota: i32) {
    self.quota = Some(quota);
  }

  pub fn with_quota(mut self, quota: i32) -> User {
    self.quota = Some(quota);
    self
  }

  pub fn quota(&self) -> Option<&i32> {
    self.quota.as_ref()
  }

  pub fn reset_quota(&mut self) {
    self.quota = None;
  }

  pub fn set_organisation_id(&mut self, organisation_id: i32) {
    self.organisation_id = organisation_id;
  }

  pub fn with_organisation_id(mut self, organisation_id: i32) -> User {
    self.organisation_id = organisation_id;
    self
  }

  pub fn organisation_id(&self) -> &i32 {
    &self.organisation_id
  }


  pub fn set_password(&mut self, password: String) {
    self.password = password;
  }

  pub fn with_password(mut self, password: String) -> User {
    self.password = password;
    self
  }

  pub fn password(&self) -> &String {
    &self.password
  }


}



