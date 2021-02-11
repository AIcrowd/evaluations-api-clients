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
  /// Grader identifier
  #[serde(rename = "grader_id")]
  grader_id: i32,
  /// URL to the submission code
  #[serde(rename = "submission_data")]
  submission_data: Option<Value>,
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
  logs: Option<String>,
  /// Evaluation start time
  #[serde(rename = "started")]
  started: Option<String>,
  /// Evaluation end time
  #[serde(rename = "ended")]
  ended: Option<String>,
  /// Additional meta data of the grader
  #[serde(rename = "meta")]
  meta: Option<String>,
  /// Name of the workflow used to evaluate submission
  #[serde(rename = "wf_name")]
  wf_name: Option<String>,
  /// Workflow priority to assign
  #[serde(rename = "workflow_priority")]
  workflow_priority: Option<i32>,
  /// User ID
  #[serde(rename = "user_id")]
  user_id: Option<i32>,
  /// Organisation ID
  #[serde(rename = "organisation_id")]
  organisation_id: Option<i32>
}

impl Submissions {
  pub fn new(grader_id: i32) -> Submissions {
    Submissions {
      id: None,
      created: None,
      updated: None,
      grader_id: grader_id,
      submission_data: None,
      status: None,
      output: None,
      additional_outputs: None,
      logs: None,
      started: None,
      ended: None,
      meta: None,
      wf_name: None,
      workflow_priority: None,
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


  pub fn set_submission_data(&mut self, submission_data: Value) {
    self.submission_data = Some(submission_data);
  }

  pub fn with_submission_data(mut self, submission_data: Value) -> Submissions {
    self.submission_data = Some(submission_data);
    self
  }

  pub fn submission_data(&self) -> Option<&Value> {
    self.submission_data.as_ref()
  }

  pub fn reset_submission_data(&mut self) {
    self.submission_data = None;
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

  pub fn set_logs(&mut self, logs: String) {
    self.logs = Some(logs);
  }

  pub fn with_logs(mut self, logs: String) -> Submissions {
    self.logs = Some(logs);
    self
  }

  pub fn logs(&self) -> Option<&String> {
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

  pub fn set_meta(&mut self, meta: String) {
    self.meta = Some(meta);
  }

  pub fn with_meta(mut self, meta: String) -> Submissions {
    self.meta = Some(meta);
    self
  }

  pub fn meta(&self) -> Option<&String> {
    self.meta.as_ref()
  }

  pub fn reset_meta(&mut self) {
    self.meta = None;
  }

  pub fn set_wf_name(&mut self, wf_name: String) {
    self.wf_name = Some(wf_name);
  }

  pub fn with_wf_name(mut self, wf_name: String) -> Submissions {
    self.wf_name = Some(wf_name);
    self
  }

  pub fn wf_name(&self) -> Option<&String> {
    self.wf_name.as_ref()
  }

  pub fn reset_wf_name(&mut self) {
    self.wf_name = None;
  }

  pub fn set_workflow_priority(&mut self, workflow_priority: i32) {
    self.workflow_priority = Some(workflow_priority);
  }

  pub fn with_workflow_priority(mut self, workflow_priority: i32) -> Submissions {
    self.workflow_priority = Some(workflow_priority);
    self
  }

  pub fn workflow_priority(&self) -> Option<&i32> {
    self.workflow_priority.as_ref()
  }

  pub fn reset_workflow_priority(&mut self) {
    self.workflow_priority = None;
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



