# AIcrowdEvaluations::Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**dataset** | **Object** | Dataset metadata | [optional] 
**cluster_id** | **Integer** | Cluster to run the grader on | [optional] 
**workflow_spec** | **Object** | Argo workflow template spec | [optional] 
**evaluator_repo** | **String** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluator_repo_tag** | **String** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**logs** | **Object** | Logs from argo workflow | [optional] 
**meta** | **Object** | Additional meta data of the grader | [optional] 
**status** | **String** | Status of the grader - True if it ready, False otherwise | [optional] 
**submission_types** | **Object** | Type of submissions allowed on the grader | [optional] 
**user_id** | **Integer** | User ID | [optional] 
**organisation_id** | **Integer** | Organisation ID | [optional] 


