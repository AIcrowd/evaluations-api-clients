
# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID |  [optional]
**created** | [**OffsetDateTime**](OffsetDateTime.md) | Creation time |  [optional]
**updated** | [**OffsetDateTime**](OffsetDateTime.md) | Last updation time |  [optional]
**datasetUrl** | **String** | S3 link of the Dataset |  [optional]
**codeAccessMode** | **String** | git/http | 
**clusterId** | **Integer** | Cluster to run the grader on |  [optional]
**dockerUsername** | **String** | Docker registry username | 
**dockerPassword** | **String** | Docker registry password | 
**dockerRegistry** | **String** | Docker registry URL. Dockerhub is used by default. |  [optional]
**workflowSpec** | **Object** | Argo workflow template spec |  [optional]
**evaluationCode** | **String** | S3 link to the zip file containing the code that will be used for the evaluation | 
**storageCapacity** | **String** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. |  [optional]
**logs** | **Object** | Logs from argo workflow |  [optional]
**meta** | **Object** | Additional meta data of the grader |  [optional]
**status** | **String** | Status of the grader - True if it ready, False otherwise |  [optional]
**userId** | **Integer** | User ID |  [optional]
**organisationId** | **Integer** | Organisation ID |  [optional]



