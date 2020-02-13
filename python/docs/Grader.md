# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | **datetime** | Creation time | [optional] 
**updated** | **datetime** | Last updation time | [optional] 
**dataset_url** | **str** | S3 link of the Dataset | [optional] 
**code_access_mode** | **str** | git/http | 
**cluster_id** | **int** | Cluster to run the grader on | [optional] 
**docker_username** | **str** | Docker registry username | 
**docker_password** | **str** | Docker registry password | 
**docker_registry** | **str** | Docker registry URL. Dockerhub is used by default. | [optional] 
**workflow_spec** | **object** | Argo workflow template spec | [optional] 
**evaluation_code** | **str** | S3 link to the zip file containing the code that will be used for the evaluation | 
**storage_capacity** | **str** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. | [optional] 
**meta** | **object** | Additional meta data of the grader | [optional] 
**status** | **bool** | Status of the grader - True if it ready, False otherwise | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


