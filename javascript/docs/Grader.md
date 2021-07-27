# AicrowdEvaluations.Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Number** | ID | [optional] 
**created** | **Date** | Creation time | [optional] 
**updated** | **Date** | Last updation time | [optional] 
**archived** | **Boolean** | Grader archival status | [optional] 
**dataset** | **Object** | Dataset metadata | [optional] 
**clusterId** | **Number** | Cluster to run the grader on | [optional] 
**description** | **String** | Description of the grader | [optional] 
**workflowSpec** | **Object** | Argo workflow template spec | [optional] 
**evaluatorRepo** | **String** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluatorRepoTag** | **String** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**name** | **String** | Name of the grader | [optional] 
**notifications** | **String** | Notifications available for the grader. | [optional] 
**logs** | **String** | Logs from argo workflow | [optional] 
**meta** | **String** | Additional meta data of the grader | [optional] 
**status** | **String** | Status of the grader - True if it ready, False otherwise | [optional] 
**secrets** | **Object** | List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml | [optional] 
**wfName** | **String** | Name of the workflow used to setup grader | [optional] 
**allowedExtensions** | **Object** | Allowed extensions for the grader | [optional] 
**workflowPriority** | **Number** | Workflow priority to assign | [optional] 
**configPath** | **String** | Path to grader configuration (default: aicrowd.yaml) | [optional] 
**userId** | **Number** | User ID | [optional] 
**organisationId** | **Number** | Organisation ID | [optional] 


