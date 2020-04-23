# AIcrowdEvaluations::Object::Cluster

## Load the model package
```perl
use AIcrowdEvaluations::Object::Cluster;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**remote_address** | **string** | Remote address used to connect to the cluster | 
**auth_token** | **string** | Authentication needed for the cluster | 
**docker_username** | **string** | Docker registry username | 
**docker_password** | **string** | Docker registry password | 
**docker_registry** | **string** | Docker registry URL. Dockerhub is used by default. | [optional] 
**storage_class** | **string** | Storage class to use for datasets | [optional] 
**status** | **boolean** | Readiness of the cluster | [optional] 
**wf_name** | **string** | Name of the workflow used to setup grader | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


