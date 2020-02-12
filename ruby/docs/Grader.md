# SwaggerClient::Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**dataset_url** | **String** | S3 link of the Dataset | [optional] 
**code_access_mode** | **String** | git/http | [optional] 
**code_access_auth_key** | **String** | SSH private key if using git or HTTP Auth token if using HTTP to access the submission code | [optional] 
**cluster_id** | **Integer** | Cluster to run the grader on | [optional] 
**docker_username** | **String** | Docker registry username | [optional] 
**docker_password** | **String** | Docker registry password | [optional] 
**docker_registry** | **String** | Docker registry URL | [optional] 
**workflow_spec** | **Object** | Argo workflow template spec | [optional] 
**evaluation_code** | **String** | S3 link to the zip file containing the code that will be used for the evaluation | [optional] 
**storage_capacity** | **String** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. | [optional] 
**meta** | **Object** | Additional meta data of the grader | [optional] 
**status** | **BOOLEAN** | Status of the grader - True if it ready, False otherwise | [optional] 
**user_id** | **Integer** | User ID | [optional] 
**organisation_id** | **Integer** | Organisation ID | [optional] 


