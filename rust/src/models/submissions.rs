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
pub struct Submissions {
  /// ID
  #[serde(rename = "id")]
  id: Option<i32>,
  /// Creation time
  #[serde(rename = "created")]
  created: Option<String>,
  /// Last updation time
  #[serde(rename = "updated")]
  updated: Option<String>,
  /// Participant identifier
  #[serde(rename = "participant_id")]
  participant_id: Option<i32>,
  /// Round identifier
  #[serde(rename = "round_id")]
  round_id: Option<i32>,
  /// Grader identifier
  #[serde(rename = "grader_id")]
  grader_id: i32,
  /// URL to the submission code
  #[serde(rename = "submission_code")]
  submission_code: Value,
  /// Current status of the submission
  #[serde(rename = "status")]
  status: Option<String>,
  /// S3 link of the output (available after the evaluation)
  #[serde(rename = "output")]
  output: Option<String>,
  /// Array of any additional outputs
  #[serde(rename = "additional_outputs")]
  additional_outputs: Option<Value>,
  /// S3 link of the STDOUT of the evaluation
  #[serde(rename = "logs")]
  logs: Option<Value>,
  /// Evaluation start time
  #[serde(rename = "started")]
  started: Option<String>,
  /// Evaluation end time
  #[serde(rename = "ended")]
  ended: Option<String>,
  /// Additional meta-data
  #[serde(rename = "meta")]
  meta: Option<Value>,
  /// User ID
  #[serde(rename = "user_id")]
  user_id: Option<i32>,
  /// Organisation ID
  #[serde(rename = "organisation_id")]
  organisation_id: Option<i32>
}

impl Submissions {
  pub fn new(grader_id: i32, submission_code: Value) -> Submissions {
    Submissions {
      id: None,
      created: None,
      updated: None,
      participant_id: None,
      round_id: None,
      grader_id: grader_id,
      submission_code: submission_code,
      status: None,
      output: None,
      additional_outputs: None,
      logs: None,
      started: None,
      ended: None,
      meta: None,
      user_id: None,
      organisation_id: None
    }
  }

  pub fn set_id(&mut self, id: i32) {
    self.id = Some(id);
  }

  pub fn with_id(mut self, id: i32) -> Submissions {
    self.id = Some(id);
    self
  }

  pub fn id(&self) -> Option<&i32> {
    self.id.as_ref()
  }

  pub fn reset_id(&mut self) {
    self.id = None;
  }

  pub fn set_created(&mut self, created: String) {
    self.created = Some(created);
  }

  pub fn with_created(mut self, created: String) -> Submissions {
    self.created = Some(created);
    self
  }

  pub fn created(&self) -> Option<&String> {
    self.created.as_ref()
  }

  pub fn reset_created(&mut self) {
    self.created = None;
  }

  pub fn set_updated(&mut self, updated: String) {
    self.updated = Some(updated);
  }

  pub fn with_updated(mut self, updated: String) -> Submissions {
    self.updated = Some(updated);
    self
  }

  pub fn updated(&self) -> Option<&String> {
    self.updated.as_ref()
  }

  pub fn reset_updated(&mut self) {
    self.updated = None;
  }

  pub fn set_participant_id(&mut self, participant_id: i32) {
    self.participant_id = Some(participant_id);
  }

  pub fn with_participant_id(mut self, participant_id: i32) -> Submissions {
    self.participant_id = Some(participant_id);
    self
  }

  pub fn participant_id(&self) -> Option<&i32> {
    self.participant_id.as_ref()
  }

  pub fn reset_participant_id(&mut self) {
    self.participant_id = None;
  }

  pub fn set_round_id(&mut self, round_id: i32) {
    self.round_id = Some(round_id);
  }

  pub fn with_round_id(mut self, round_id: i32) -> Submissions {
    self.round_id = Some(round_id);
    self
  }

  pub fn round_id(&self) -> Option<&i32> {
    self.round_id.as_ref()
  }

  pub fn reset_round_id(&mut self) {
    self.round_id = None;
  }

  pub fn set_grader_id(&mut self, grader_id: i32) {
    self.grader_id = grader_id;
  }

  pub fn with_grader_id(mut self, grader_id: i32) -> Submissions {
    self.grader_id = grader_id;
    self
  }

  pub fn grader_id(&self) -> &i32 {
    &self.grader_id
  }


  pub fn set_submission_code(&mut self, submission_code: Value) {
    self.submission_code = submission_code;
  }

  pub fn with_submission_code(mut self, submission_code: Value) -> Submissions {
    self.submission_code = submission_code;
    self
  }

  pub fn submission_code(&self) -> &Value {
    &self.submission_code
  }


  pub fn set_status(&mut self, status: String) {
    self.status = Some(status);
  }

  pub fn with_status(mut self, status: String) -> Submissions {
    self.status = Some(status);
    self
  }

  pub fn status(&self) -> Option<&String> {
    self.status.as_ref()
  }

  pub fn reset_status(&mut self) {
    self.status = None;
  }

  pub fn set_output(&mut self, output: String) {
    self.output = Some(output);
  }

  pub fn with_output(mut self, output: String) -> Submissions {
    self.output = Some(output);
    self
  }

  pub fn output(&self) -> Option<&String> {
    self.output.as_ref()
  }

  pub fn reset_output(&mut self) {
    self.output = None;
  }

  pub fn set_additional_outputs(&mut self, additional_outputs: Value) {
    self.additional_outputs = Some(additional_outputs);
  }

  pub fn with_additional_outputs(mut self, additional_outputs: Value) -> Submissions {
    self.additional_outputs = Some(additional_outputs);
    self
  }

  pub fn additional_outputs(&self) -> Option<&Value> {
    self.additional_outputs.as_ref()
  }

  pub fn reset_additional_outputs(&mut self) {
    self.additional_outputs = None;
  }

  pub fn set_logs(&mut self, logs: Value) {
    self.logs = Some(logs);
  }

  pub fn with_logs(mut self, logs: Value) -> Submissions {
    self.logs = Some(logs);
    self
  }

  pub fn logs(&self) -> Option<&Value> {
    self.logs.as_ref()
  }

  pub fn reset_logs(&mut self) {
    self.logs = None;
  }

  pub fn set_started(&mut self, started: String) {
    self.started = Some(started);
  }

  pub fn with_started(mut self, started: String) -> Submissions {
    self.started = Some(started);
    self
  }

  pub fn started(&self) -> Option<&String> {
    self.started.as_ref()
  }

  pub fn reset_started(&mut self) {
    self.started = None;
  }

  pub fn set_ended(&mut self, ended: String) {
    self.ended = Some(ended);
  }

  pub fn with_ended(mut self, ended: String) -> Submissions {
    self.ended = Some(ended);
    self
  }

  pub fn ended(&self) -> Option<&String> {
    self.ended.as_ref()
  }

  pub fn reset_ended(&mut self) {
    self.ended = None;
  }

  pub fn set_meta(&mut self, meta: Value) {
    self.meta = Some(meta);
  }

  pub fn with_meta(mut self, meta: Value) -> Submissions {
    self.meta = Some(meta);
    self
  }

  pub fn meta(&self) -> Option<&Value> {
    self.meta.as_ref()
  }

  pub fn reset_meta(&mut self) {
    self.meta = None;
  }

  pub fn set_user_id(&mut self, user_id: i32) {
    self.user_id = Some(user_id);
  }

  pub fn with_user_id(mut self, user_id: i32) -> Submissions {
    self.user_id = Some(user_id);
    self
  }

  pub fn user_id(&self) -> Option<&i32> {
    self.user_id.as_ref()
  }

  pub fn reset_user_id(&mut self) {
    self.user_id = None;
  }

  pub fn set_organisation_id(&mut self, organisation_id: i32) {
    self.organisation_id = Some(organisation_id);
  }

  pub fn with_organisation_id(mut self, organisation_id: i32) -> Submissions {
    self.organisation_id = Some(organisation_id);
    self
  }

  pub fn organisation_id(&self) -> Option<&i32> {
    self.organisation_id.as_ref()
  }

  pub fn reset_organisation_id(&mut self) {
    self.organisation_id = None;
  }

}



