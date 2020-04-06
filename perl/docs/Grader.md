# AIcrowdEvaluations::Object::Grader

## Load the model package
```perl
use AIcrowdEvaluations::Object::Grader;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**dataset** | **object** | Dataset metadata | [optional] 
**cluster_id** | **int** | Cluster to run the grader on | [optional] 
**workflow_spec** | **object** | Argo workflow template spec | [optional] 
**evaluator_repo** | **string** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluator_repo_tag** | **string** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**notifications** | **string** | Notifications available for the grader. | [optional] 
**logs** | **object** | Logs from argo workflow | [optional] 
**meta** | **object** | Additional meta data of the grader | [optional] 
**status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] 
**submission_types** | **object** | Type of submissions allowed on the grader | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


