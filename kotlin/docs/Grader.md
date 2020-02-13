
# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.Int** | ID |  [optional]
**created** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Creation time |  [optional]
**updated** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Last updation time |  [optional]
**dataset_url** | **kotlin.String** | S3 link of the Dataset |  [optional]
**code_access_mode** | **kotlin.String** | git/http | 
**cluster_id** | **kotlin.Int** | Cluster to run the grader on |  [optional]
**docker_username** | **kotlin.String** | Docker registry username | 
**docker_password** | **kotlin.String** | Docker registry password | 
**docker_registry** | **kotlin.String** | Docker registry URL. Dockerhub is used by default. |  [optional]
**workflow_spec** | [**kotlin.Any**](kotlin.Any.md) | Argo workflow template spec |  [optional]
**evaluation_code** | **kotlin.String** | S3 link to the zip file containing the code that will be used for the evaluation | 
**storage_capacity** | **kotlin.String** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. |  [optional]
**meta** | [**kotlin.Any**](kotlin.Any.md) | Additional meta data of the grader |  [optional]
**status** | **kotlin.Boolean** | Status of the grader - True if it ready, False otherwise |  [optional]
**user_id** | **kotlin.Int** | User ID |  [optional]
**organisation_id** | **kotlin.Int** | Organisation ID |  [optional]



