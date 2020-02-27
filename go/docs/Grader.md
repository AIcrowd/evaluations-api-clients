# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | ID | [optional] [default to null]
**Created** | [**time.Time**](time.Time.md) | Creation time | [optional] [default to null]
**Updated** | [**time.Time**](time.Time.md) | Last updation time | [optional] [default to null]
**DatasetUrl** | **string** | S3 link of the Dataset | [optional] [default to null]
**CodeAccessMode** | **string** | git/http | [default to null]
**ClusterId** | **int32** | Cluster to run the grader on | [optional] [default to null]
**DockerUsername** | **string** | Docker registry username | [default to null]
**DockerPassword** | **string** | Docker registry password | [default to null]
**DockerRegistry** | **string** | Docker registry URL. Dockerhub is used by default. | [optional] [default to null]
**WorkflowSpec** | [***interface{}**](interface{}.md) | Argo workflow template spec | [optional] [default to null]
**EvaluationCode** | **string** | S3 link to the zip file containing the code that will be used for the evaluation | [default to null]
**StorageCapacity** | **string** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. | [optional] [default to null]
**Logs** | [***interface{}**](interface{}.md) | Logs from argo workflow | [optional] [default to null]
**Meta** | [***interface{}**](interface{}.md) | Additional meta data of the grader | [optional] [default to null]
**Status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] [default to null]
**UserId** | **int32** | User ID | [optional] [default to null]
**OrganisationId** | **int32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


