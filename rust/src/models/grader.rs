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
pub struct Grader {
  /// ID
  #[serde(rename = "id")]
  id: Option<i32>,
  /// Creation time
  #[serde(rename = "created")]
  created: Option<String>,
  /// Last updation time
  #[serde(rename = "updated")]
  updated: Option<String>,
  /// Grader archival status
  #[serde(rename = "archived")]
  archived: Option<bool>,
  /// Dataset metadata
  #[serde(rename = "dataset")]
  dataset: Option<Value>,
  /// Cluster to run the grader on
  #[serde(rename = "cluster_id")]
  cluster_id: Option<i32>,
  /// Description of the grader
  #[serde(rename = "description")]
  description: Option<String>,
  /// Argo workflow template spec
  #[serde(rename = "workflow_spec")]
  workflow_spec: Option<Value>,
  /// Git URL of the repository containing the code that will be used for the evaluation
  #[serde(rename = "evaluator_repo")]
  evaluator_repo: String,
  /// Git branch/tag that should be used with the evaluator repository.
  #[serde(rename = "evaluator_repo_tag")]
  evaluator_repo_tag: Option<String>,
  /// Name of the grader
  #[serde(rename = "name")]
  name: Option<String>,
  /// Notifications available for the grader.
  #[serde(rename = "notifications")]
  notifications: Option<String>,
  /// Logs from argo workflow
  #[serde(rename = "logs")]
  logs: Option<String>,
  /// Additional meta data of the grader
  #[serde(rename = "meta")]
  meta: Option<String>,
  /// Status of the grader - True if it ready, False otherwise
  #[serde(rename = "status")]
  status: Option<String>,
  /// List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
  #[serde(rename = "secrets")]
  secrets: Option<Value>,
  /// Name of the workflow used to setup grader
  #[serde(rename = "wf_name")]
  wf_name: Option<String>,
  /// Allowed extensions for the grader
  #[serde(rename = "allowed_extensions")]
  allowed_extensions: Option<Value>,
  /// Workflow priority to assign
  #[serde(rename = "workflow_priority")]
  workflow_priority: Option<i32>,
  /// Path to grader configuration (default: aicrowd.yaml)
  #[serde(rename = "config_path")]
  config_path: Option<String>,
  /// Docker repo to use for grader images
  #[serde(rename = "docker_repo")]
  docker_repo: Option<String>,
  /// Context for grader files inside the repository
  #[serde(rename = "context_dir")]
  context_dir: Option<String>,
  /// User ID
  #[serde(rename = "user_id")]
  user_id: Option<i32>,
  /// Organisation ID
  #[serde(rename = "organisation_id")]
  organisation_id: Option<i32>
}

impl Grader {
  pub fn new(evaluator_repo: String) -> Grader {
    Grader {
      id: None,
      created: None,
      updated: None,
      archived: None,
      dataset: None,
      cluster_id: None,
      description: None,
      workflow_spec: None,
      evaluator_repo: evaluator_repo,
      evaluator_repo_tag: None,
      name: None,
      notifications: None,
      logs: None,
      meta: None,
      status: None,
      secrets: None,
      wf_name: None,
      allowed_extensions: None,
      workflow_priority: None,
      config_path: None,
      docker_repo: None,
      context_dir: None,
      user_id: None,
      organisation_id: None
    }
  }

  pub fn set_id(&mut self, id: i32) {
    self.id = Some(id);
  }

  pub fn with_id(mut self, id: i32) -> Grader {
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

  pub fn with_created(mut self, created: String) -> Grader {
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

  pub fn with_updated(mut self, updated: String) -> Grader {
    self.updated = Some(updated);
    self
  }

  pub fn updated(&self) -> Option<&String> {
    self.updated.as_ref()
  }

  pub fn reset_updated(&mut self) {
    self.updated = None;
  }

  pub fn set_archived(&mut self, archived: bool) {
    self.archived = Some(archived);
  }

  pub fn with_archived(mut self, archived: bool) -> Grader {
    self.archived = Some(archived);
    self
  }

  pub fn archived(&self) -> Option<&bool> {
    self.archived.as_ref()
  }

  pub fn reset_archived(&mut self) {
    self.archived = None;
  }

  pub fn set_dataset(&mut self, dataset: Value) {
    self.dataset = Some(dataset);
  }

  pub fn with_dataset(mut self, dataset: Value) -> Grader {
    self.dataset = Some(dataset);
    self
  }

  pub fn dataset(&self) -> Option<&Value> {
    self.dataset.as_ref()
  }

  pub fn reset_dataset(&mut self) {
    self.dataset = None;
  }

  pub fn set_cluster_id(&mut self, cluster_id: i32) {
    self.cluster_id = Some(cluster_id);
  }

  pub fn with_cluster_id(mut self, cluster_id: i32) -> Grader {
    self.cluster_id = Some(cluster_id);
    self
  }

  pub fn cluster_id(&self) -> Option<&i32> {
    self.cluster_id.as_ref()
  }

  pub fn reset_cluster_id(&mut self) {
    self.cluster_id = None;
  }

  pub fn set_description(&mut self, description: String) {
    self.description = Some(description);
  }

  pub fn with_description(mut self, description: String) -> Grader {
    self.description = Some(description);
    self
  }

  pub fn description(&self) -> Option<&String> {
    self.description.as_ref()
  }

  pub fn reset_description(&mut self) {
    self.description = None;
  }

  pub fn set_workflow_spec(&mut self, workflow_spec: Value) {
    self.workflow_spec = Some(workflow_spec);
  }

  pub fn with_workflow_spec(mut self, workflow_spec: Value) -> Grader {
    self.workflow_spec = Some(workflow_spec);
    self
  }

  pub fn workflow_spec(&self) -> Option<&Value> {
    self.workflow_spec.as_ref()
  }

  pub fn reset_workflow_spec(&mut self) {
    self.workflow_spec = None;
  }

  pub fn set_evaluator_repo(&mut self, evaluator_repo: String) {
    self.evaluator_repo = evaluator_repo;
  }

  pub fn with_evaluator_repo(mut self, evaluator_repo: String) -> Grader {
    self.evaluator_repo = evaluator_repo;
    self
  }

  pub fn evaluator_repo(&self) -> &String {
    &self.evaluator_repo
  }


  pub fn set_evaluator_repo_tag(&mut self, evaluator_repo_tag: String) {
    self.evaluator_repo_tag = Some(evaluator_repo_tag);
  }

  pub fn with_evaluator_repo_tag(mut self, evaluator_repo_tag: String) -> Grader {
    self.evaluator_repo_tag = Some(evaluator_repo_tag);
    self
  }

  pub fn evaluator_repo_tag(&self) -> Option<&String> {
    self.evaluator_repo_tag.as_ref()
  }

  pub fn reset_evaluator_repo_tag(&mut self) {
    self.evaluator_repo_tag = None;
  }

  pub fn set_name(&mut self, name: String) {
    self.name = Some(name);
  }

  pub fn with_name(mut self, name: String) -> Grader {
    self.name = Some(name);
    self
  }

  pub fn name(&self) -> Option<&String> {
    self.name.as_ref()
  }

  pub fn reset_name(&mut self) {
    self.name = None;
  }

  pub fn set_notifications(&mut self, notifications: String) {
    self.notifications = Some(notifications);
  }

  pub fn with_notifications(mut self, notifications: String) -> Grader {
    self.notifications = Some(notifications);
    self
  }

  pub fn notifications(&self) -> Option<&String> {
    self.notifications.as_ref()
  }

  pub fn reset_notifications(&mut self) {
    self.notifications = None;
  }

  pub fn set_logs(&mut self, logs: String) {
    self.logs = Some(logs);
  }

  pub fn with_logs(mut self, logs: String) -> Grader {
    self.logs = Some(logs);
    self
  }

  pub fn logs(&self) -> Option<&String> {
    self.logs.as_ref()
  }

  pub fn reset_logs(&mut self) {
    self.logs = None;
  }

  pub fn set_meta(&mut self, meta: String) {
    self.meta = Some(meta);
  }

  pub fn with_meta(mut self, meta: String) -> Grader {
    self.meta = Some(meta);
    self
  }

  pub fn meta(&self) -> Option<&String> {
    self.meta.as_ref()
  }

  pub fn reset_meta(&mut self) {
    self.meta = None;
  }

  pub fn set_status(&mut self, status: String) {
    self.status = Some(status);
  }

  pub fn with_status(mut self, status: String) -> Grader {
    self.status = Some(status);
    self
  }

  pub fn status(&self) -> Option<&String> {
    self.status.as_ref()
  }

  pub fn reset_status(&mut self) {
    self.status = None;
  }

  pub fn set_secrets(&mut self, secrets: Value) {
    self.secrets = Some(secrets);
  }

  pub fn with_secrets(mut self, secrets: Value) -> Grader {
    self.secrets = Some(secrets);
    self
  }

  pub fn secrets(&self) -> Option<&Value> {
    self.secrets.as_ref()
  }

  pub fn reset_secrets(&mut self) {
    self.secrets = None;
  }

  pub fn set_wf_name(&mut self, wf_name: String) {
    self.wf_name = Some(wf_name);
  }

  pub fn with_wf_name(mut self, wf_name: String) -> Grader {
    self.wf_name = Some(wf_name);
    self
  }

  pub fn wf_name(&self) -> Option<&String> {
    self.wf_name.as_ref()
  }

  pub fn reset_wf_name(&mut self) {
    self.wf_name = None;
  }

  pub fn set_allowed_extensions(&mut self, allowed_extensions: Value) {
    self.allowed_extensions = Some(allowed_extensions);
  }

  pub fn with_allowed_extensions(mut self, allowed_extensions: Value) -> Grader {
    self.allowed_extensions = Some(allowed_extensions);
    self
  }

  pub fn allowed_extensions(&self) -> Option<&Value> {
    self.allowed_extensions.as_ref()
  }

  pub fn reset_allowed_extensions(&mut self) {
    self.allowed_extensions = None;
  }

  pub fn set_workflow_priority(&mut self, workflow_priority: i32) {
    self.workflow_priority = Some(workflow_priority);
  }

  pub fn with_workflow_priority(mut self, workflow_priority: i32) -> Grader {
    self.workflow_priority = Some(workflow_priority);
    self
  }

  pub fn workflow_priority(&self) -> Option<&i32> {
    self.workflow_priority.as_ref()
  }

  pub fn reset_workflow_priority(&mut self) {
    self.workflow_priority = None;
  }

  pub fn set_config_path(&mut self, config_path: String) {
    self.config_path = Some(config_path);
  }

  pub fn with_config_path(mut self, config_path: String) -> Grader {
    self.config_path = Some(config_path);
    self
  }

  pub fn config_path(&self) -> Option<&String> {
    self.config_path.as_ref()
  }

  pub fn reset_config_path(&mut self) {
    self.config_path = None;
  }

  pub fn set_docker_repo(&mut self, docker_repo: String) {
    self.docker_repo = Some(docker_repo);
  }

  pub fn with_docker_repo(mut self, docker_repo: String) -> Grader {
    self.docker_repo = Some(docker_repo);
    self
  }

  pub fn docker_repo(&self) -> Option<&String> {
    self.docker_repo.as_ref()
  }

  pub fn reset_docker_repo(&mut self) {
    self.docker_repo = None;
  }

  pub fn set_context_dir(&mut self, context_dir: String) {
    self.context_dir = Some(context_dir);
  }

  pub fn with_context_dir(mut self, context_dir: String) -> Grader {
    self.context_dir = Some(context_dir);
    self
  }

  pub fn context_dir(&self) -> Option<&String> {
    self.context_dir.as_ref()
  }

  pub fn reset_context_dir(&mut self) {
    self.context_dir = None;
  }

  pub fn set_user_id(&mut self, user_id: i32) {
    self.user_id = Some(user_id);
  }

  pub fn with_user_id(mut self, user_id: i32) -> Grader {
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

  pub fn with_organisation_id(mut self, organisation_id: i32) -> Grader {
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



