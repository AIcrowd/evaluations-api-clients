# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | ID | [optional] [default to null]
**Created** | [**time.Time**](time.Time.md) | Creation time | [optional] [default to null]
**Updated** | [**time.Time**](time.Time.md) | Last updation time | [optional] [default to null]
**Dataset** | [***interface{}**](interface{}.md) | Dataset metadata | [optional] [default to null]
**ClusterId** | **int32** | Cluster to run the grader on | [optional] [default to null]
**WorkflowSpec** | [***interface{}**](interface{}.md) | Argo workflow template spec | [optional] [default to null]
**EvaluatorRepo** | **string** | Git URL of the repository containing the code that will be used for the evaluation | [default to null]
**EvaluatorRepoTag** | **string** | Git branch/tag that should be used with the evaluator repository. | [optional] [default to null]
**Notifications** | **string** | Notifications available for the grader. | [optional] [default to null]
**Logs** | [***interface{}**](interface{}.md) | Logs from argo workflow | [optional] [default to null]
**Meta** | [***interface{}**](interface{}.md) | Additional meta data of the grader | [optional] [default to null]
**Status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] [default to null]
**SubmissionTypes** | [***interface{}**](interface{}.md) | Type of submissions allowed on the grader | [optional] [default to null]
**UserId** | **int32** | User ID | [optional] [default to null]
**OrganisationId** | **int32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


