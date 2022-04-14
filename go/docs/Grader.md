# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | ID | [optional] [default to null]
**Created** | [**time.Time**](time.Time.md) | Creation time | [optional] [default to null]
**Updated** | [**time.Time**](time.Time.md) | Last updation time | [optional] [default to null]
**Archived** | **bool** | Grader archival status | [optional] [default to null]
**Dataset** | **interface{}** | Dataset metadata | [optional] [default to null]
**ClusterId** | **int32** | Cluster to run the grader on | [optional] [default to null]
**Description** | **string** | Description of the grader | [optional] [default to null]
**WorkflowSpec** | **interface{}** | Argo workflow template spec | [optional] [default to null]
**EvaluatorRepo** | **string** | Git URL of the repository containing the code that will be used for the evaluation | [default to null]
**EvaluatorRepoTag** | **string** | Git branch/tag that should be used with the evaluator repository. | [optional] [default to null]
**Name** | **string** | Name of the grader | [optional] [default to null]
**Notifications** | **string** | Notifications available for the grader. | [optional] [default to null]
**Logs** | **string** | Logs from argo workflow | [optional] [default to null]
**Meta** | **string** | Additional meta data of the grader | [optional] [default to null]
**Status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] [default to null]
**Secrets** | **interface{}** | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml | [optional] [default to null]
**WfName** | **string** | Name of the workflow used to setup grader | [optional] [default to null]
**AllowedExtensions** | **interface{}** | Allowed extensions for the grader | [optional] [default to null]
**WorkflowPriority** | **int32** | Workflow priority to assign | [optional] [default to null]
**ConfigPath** | **string** | Path to grader configuration (default: aicrowd.yaml) | [optional] [default to null]
**DockerRepo** | **string** | Docker repo to use for grader images | [optional] [default to null]
**ContextDir** | **string** | Context for grader files inside the repository | [optional] [default to null]
**UserId** | **int32** | User ID | [optional] [default to null]
**OrganisationId** | **int32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


