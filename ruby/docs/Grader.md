# AIcrowdEvaluations::Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**archived** | **BOOLEAN** | Grader archival status | [optional] 
**dataset** | **Object** | Dataset metadata | [optional] 
**cluster_id** | **Integer** | Cluster to run the grader on | [optional] 
**description** | **String** | Description of the grader | [optional] 
**workflow_spec** | **Object** | Argo workflow template spec | [optional] 
**evaluator_repo** | **String** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluator_repo_tag** | **String** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**name** | **String** | Name of the grader | [optional] 
**notifications** | **String** | Notifications available for the grader. | [optional] 
**logs** | **String** | Logs from argo workflow | [optional] 
**meta** | **String** | Additional meta data of the grader | [optional] 
**status** | **String** | Status of the grader - True if it ready, False otherwise | [optional] 
**secrets** | **Object** | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml | [optional] 
**wf_name** | **String** | Name of the workflow used to setup grader | [optional] 
**allowed_extensions** | **Object** | Allowed extensions for the grader | [optional] 
**workflow_priority** | **Integer** | Workflow priority to assign | [optional] 
**config_path** | **String** | Path to grader configuration (default: aicrowd.yaml) | [optional] 
**docker_repo** | **String** | Docker repo to use for grader images | [optional] 
**context_dir** | **String** | Context for grader files inside the repository | [optional] 
**user_id** | **Integer** | User ID | [optional] 
**organisation_id** | **Integer** | Organisation ID | [optional] 


