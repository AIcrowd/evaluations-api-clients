# AIcrowdEvaluations::Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**remote_address** | **String** | Remote address used to connect to the cluster | 
**auth_token** | **String** | Authentication needed for the cluster | 
**docker_username** | **String** | Docker registry username | 
**docker_registry** | **String** | Docker registry URL. Dockerhub is used by default. | [optional] 
**namespace** | **String** | Kubernetes namespace to run the workflows in | [optional] 
**storage_class** | **String** | Storage class to use for datasets | [optional] 
**status** | **BOOLEAN** | Readiness of the cluster | [optional] 
**wf_name** | **String** | Name of the workflow used to setup grader | [optional] 
**argo_host** | **String** | External IP exposed by LoadBalancer Service of argo-server deployment | [optional] 
**argo_token** | **String** | Argo server token required for authentication | [optional] 
**minio_user** | **String** | Minio user to give file access to | [optional] 
**s3_policy** | **String** | Minio s3 policy | [optional] 
**user_id** | **Integer** | User ID | [optional] 
**organisation_id** | **Integer** | Organisation ID | [optional] 


