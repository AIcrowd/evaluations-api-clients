# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | **datetime** | Creation time | [optional] 
**updated** | **datetime** | Last updation time | [optional] 
**archived** | **bool** | Grader archival status | [optional] 
**dataset** | **object** | Dataset metadata | [optional] 
**cluster_id** | **int** | Cluster to run the grader on | [optional] 
**description** | **str** | Description of the grader | [optional] 
**workflow_spec** | **object** | Argo workflow template spec | [optional] 
**evaluator_repo** | **str** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluator_repo_tag** | **str** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**name** | **str** | Name of the grader | [optional] 
**notifications** | **str** | Notifications available for the grader. | [optional] 
**logs** | **str** | Logs from argo workflow | [optional] 
**meta** | **str** | Additional meta data of the grader | [optional] 
**status** | **str** | Status of the grader - True if it ready, False otherwise | [optional] 
**secrets** | **object** | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml | [optional] 
**wf_name** | **str** | Name of the workflow used to setup grader | [optional] 
**allowed_extensions** | **object** | Allowed extensions for the grader | [optional] 
**workflow_priority** | **int** | Workflow priority to assign | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


