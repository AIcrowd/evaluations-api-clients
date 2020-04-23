# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | [**\DateTime**](\DateTime.md) | Creation time | [optional] 
**updated** | [**\DateTime**](\DateTime.md) | Last updation time | [optional] 
**dataset** | **object** | Dataset metadata | [optional] 
**cluster_id** | **int** | Cluster to run the grader on | [optional] 
**description** | **string** | Description of the grader | [optional] 
**workflow_spec** | **object** | Argo workflow template spec | [optional] 
**evaluator_repo** | **string** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluator_repo_tag** | **string** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**name** | **string** | Name of the grader | [optional] 
**notifications** | **string** | Notifications available for the grader. | [optional] 
**logs** | **string** | Logs from argo workflow | [optional] 
**meta** | **string** | Additional meta data of the grader | [optional] 
**status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] 
**secrets** | **object** | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml | [optional] 
**wf_name** | **string** | Name of the workflow used to setup grader | [optional] 
**submission_types** | **object** | Type of submissions allowed on the grader | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


