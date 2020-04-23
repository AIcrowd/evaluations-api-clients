# AicrowdEvaluations.Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Number** | ID | [optional] 
**created** | **Date** | Creation time | [optional] 
**updated** | **Date** | Last updation time | [optional] 
**remoteAddress** | **String** | Remote address used to connect to the cluster | 
**authToken** | **String** | Authentication needed for the cluster | 
**dockerUsername** | **String** | Docker registry username | 
**dockerPassword** | **String** | Docker registry password | 
**dockerRegistry** | **String** | Docker registry URL. Dockerhub is used by default. | [optional] 
**storageClass** | **String** | Storage class to use for datasets | [optional] 
**status** | **Boolean** | Readiness of the cluster | [optional] 
**wfName** | **String** | Name of the workflow used to setup grader | [optional] 
**userId** | **Number** | User ID | [optional] 
**organisationId** | **Number** | Organisation ID | [optional] 


