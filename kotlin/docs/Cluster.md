
# Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.Int** | ID |  [optional]
**created** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Creation time |  [optional]
**updated** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Last updation time |  [optional]
**remote_address** | **kotlin.String** | Remote address used to connect to the cluster | 
**auth_token** | **kotlin.String** | Authentication needed for the cluster | 
**docker_username** | **kotlin.String** | Docker registry username | 
**docker_registry** | **kotlin.String** | Docker registry URL. Dockerhub is used by default. |  [optional]
**namespace** | **kotlin.String** | Kubernetes namespace to run the workflows in |  [optional]
**storage_class** | **kotlin.String** | Storage class to use for datasets |  [optional]
**status** | **kotlin.Boolean** | Readiness of the cluster |  [optional]
**wf_name** | **kotlin.String** | Name of the workflow used to setup grader |  [optional]
**user_id** | **kotlin.Int** | User ID |  [optional]
**organisation_id** | **kotlin.Int** | Organisation ID |  [optional]



