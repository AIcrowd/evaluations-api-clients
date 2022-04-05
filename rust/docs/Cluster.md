# Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** | ID | [optional] [default to null]
**created** | **String** | Creation time | [optional] [default to null]
**updated** | **String** | Last updation time | [optional] [default to null]
**remote_address** | **String** | Remote address used to connect to the cluster | [default to null]
**auth_token** | **String** | Authentication needed for the cluster | [default to null]
**docker_username** | **String** | Docker registry username | [default to null]
**docker_registry** | **String** | Docker registry URL. Dockerhub is used by default. | [optional] [default to null]
**namespace** | **String** | Kubernetes namespace to run the workflows in | [optional] [default to null]
**storage_class** | **String** | Storage class to use for datasets | [optional] [default to null]
**status** | **bool** | Readiness of the cluster | [optional] [default to null]
**wf_name** | **String** | Name of the workflow used to setup grader | [optional] [default to null]
**argo_host** | **String** | External IP exposed by LoadBalancer Service of argo-server deployment | [optional] [default to null]
**argo_token** | **String** | Argo server token required for authentication | [optional] [default to null]
**minio_user** | **String** | Minio user to give file access to | [optional] [default to null]
**s3_policy** | **String** | Minio s3 policy | [optional] [default to null]
**user_id** | **i32** | User ID | [optional] [default to null]
**organisation_id** | **i32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


