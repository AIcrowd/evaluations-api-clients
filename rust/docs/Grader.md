# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** | ID | [optional] [default to null]
**created** | **String** | Creation time | [optional] [default to null]
**updated** | **String** | Last updation time | [optional] [default to null]
**dataset** | [***Value**](Value.md) | Dataset metadata | [optional] [default to null]
**cluster_id** | **i32** | Cluster to run the grader on | [optional] [default to null]
**description** | **String** | Description of the grader | [optional] [default to null]
**workflow_spec** | [***Value**](Value.md) | Argo workflow template spec | [optional] [default to null]
**evaluator_repo** | **String** | Git URL of the repository containing the code that will be used for the evaluation | [default to null]
**evaluator_repo_tag** | **String** | Git branch/tag that should be used with the evaluator repository. | [optional] [default to null]
**name** | **String** | Name of the grader | [optional] [default to null]
**notifications** | **String** | Notifications available for the grader. | [optional] [default to null]
**logs** | **String** | Logs from argo workflow | [optional] [default to null]
**meta** | **String** | Additional meta data of the grader | [optional] [default to null]
**status** | **String** | Status of the grader - True if it ready, False otherwise | [optional] [default to null]
**secrets** | [***Value**](Value.md) | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml | [optional] [default to null]
**wf_name** | **String** | Name of the workflow used to setup grader | [optional] [default to null]
**submission_types** | [***Value**](Value.md) | Type of submissions allowed on the grader | [optional] [default to null]
**user_id** | **i32** | User ID | [optional] [default to null]
**organisation_id** | **i32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


