# Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | ID | [optional] [default to null]
**Created** | [**time.Time**](time.Time.md) | Creation time | [optional] [default to null]
**Updated** | [**time.Time**](time.Time.md) | Last updation time | [optional] [default to null]
**RemoteAddress** | **string** | Remote address used to connect to the cluster | [default to null]
**AuthToken** | **string** | Authentication needed for the cluster | [default to null]
**DockerUsername** | **string** | Docker registry username | [default to null]
**DockerRegistry** | **string** | Docker registry URL. Dockerhub is used by default. | [optional] [default to null]
**Namespace** | **string** | Kubernetes namespace to run the workflows in | [optional] [default to null]
**StorageClass** | **string** | Storage class to use for datasets | [optional] [default to null]
**Status** | **bool** | Readiness of the cluster | [optional] [default to null]
**WfName** | **string** | Name of the workflow used to setup grader | [optional] [default to null]
**ArgoHost** | **string** | External IP exposed by LoadBalancer Service of argo-server deployment | [optional] [default to null]
**ArgoToken** | **string** | Argo server token required for authentication | [optional] [default to null]
**MinioUser** | **string** | Minio user to give file access to | [optional] [default to null]
**S3Policy** | **string** | Minio s3 policy | [optional] [default to null]
**UserId** | **int32** | User ID | [optional] [default to null]
**OrganisationId** | **int32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


