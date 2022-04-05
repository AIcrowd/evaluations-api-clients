# Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | **datetime** | Creation time | [optional] 
**updated** | **datetime** | Last updation time | [optional] 
**remote_address** | **str** | Remote address used to connect to the cluster | 
**auth_token** | **str** | Authentication needed for the cluster | 
**docker_username** | **str** | Docker registry username | 
**docker_registry** | **str** | Docker registry URL. Dockerhub is used by default. | [optional] 
**namespace** | **str** | Kubernetes namespace to run the workflows in | [optional] 
**storage_class** | **str** | Storage class to use for datasets | [optional] 
**status** | **bool** | Readiness of the cluster | [optional] 
**wf_name** | **str** | Name of the workflow used to setup grader | [optional] 
**argo_host** | **str** | External IP exposed by LoadBalancer Service of argo-server deployment | [optional] 
**argo_token** | **str** | Argo server token required for authentication | [optional] 
**minio_user** | **str** | Minio user to give file access to | [optional] 
**s3_policy** | **str** | Minio s3 policy | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


