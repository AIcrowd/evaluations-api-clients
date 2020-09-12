# Com.AIcrowd.Evaluations.Model.Grader
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int?** | ID | [optional] 
**Created** | **DateTime?** | Creation time | [optional] 
**Updated** | **DateTime?** | Last updation time | [optional] 
**Dataset** | **Object** | Dataset metadata | [optional] 
**ClusterId** | **int?** | Cluster to run the grader on | [optional] 
**Description** | **string** | Description of the grader | [optional] 
**WorkflowSpec** | **Object** | Argo workflow template spec | [optional] 
**EvaluatorRepo** | **string** | Git URL of the repository containing the code that will be used for the evaluation | 
**EvaluatorRepoTag** | **string** | Git branch/tag that should be used with the evaluator repository. | [optional] 
**Name** | **string** | Name of the grader | [optional] 
**Notifications** | **string** | Notifications available for the grader. | [optional] 
**Logs** | **string** | Logs from argo workflow | [optional] 
**Meta** | **string** | Additional meta data of the grader | [optional] 
**Status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] 
**Secrets** | **Object** | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml | [optional] 
**WfName** | **string** | Name of the workflow used to setup grader | [optional] 
**AllowedExtensions** | **Object** | Allowed extensions for the grader | [optional] 
**UserId** | **int?** | User ID | [optional] 
**OrganisationId** | **int?** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

