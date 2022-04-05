# Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | [**\DateTime**](\DateTime.md) | Creation time | [optional] 
**updated** | [**\DateTime**](\DateTime.md) | Last updation time | [optional] 
**remote_address** | **string** | Remote address used to connect to the cluster | 
**auth_token** | **string** | Authentication needed for the cluster | 
**docker_username** | **string** | Docker registry username | 
**docker_registry** | **string** | Docker registry URL. Dockerhub is used by default. | [optional] 
**namespace** | **string** | Kubernetes namespace to run the workflows in | [optional] 
**storage_class** | **string** | Storage class to use for datasets | [optional] 
**status** | **bool** | Readiness of the cluster | [optional] 
**wf_name** | **string** | Name of the workflow used to setup grader | [optional] 
**argo_host** | **string** | External IP exposed by LoadBalancer Service of argo-server deployment | [optional] 
**argo_token** | **string** | Argo server token required for authentication | [optional] 
**minio_user** | **string** | Minio user to give file access to | [optional] 
**s3_policy** | **string** | Minio s3 policy | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


