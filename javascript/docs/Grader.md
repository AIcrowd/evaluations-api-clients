# AicrowdEvaluations.Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Number** | ID | [optional] 
**created** | **Date** | Creation time | [optional] 
**updated** | **Date** | Last updation time | [optional] 
**dataset** | **Object** | Dataset metadata | [optional] 
**clusterId** | **Number** | Cluster to run the grader on | [optional] 
**workflowSpec** | **Object** | Argo workflow template spec | [optional] 
**evaluatorRepo** | **String** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluatorRepoTag** | **String** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**notifications** | **String** | Notifications available for the grader. | [optional] 
**logs** | **Object** | Logs from argo workflow | [optional] 
**meta** | **Object** | Additional meta data of the grader | [optional] 
**status** | **String** | Status of the grader - True if it ready, False otherwise | [optional] 
**submissionTypes** | **Object** | Type of submissions allowed on the grader | [optional] 
**userId** | **Number** | User ID | [optional] 
**organisationId** | **Number** | Organisation ID | [optional] 


