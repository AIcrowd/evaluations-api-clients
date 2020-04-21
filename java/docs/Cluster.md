
# Cluster

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID |  [optional]
**created** | [**OffsetDateTime**](OffsetDateTime.md) | Creation time |  [optional]
**updated** | [**OffsetDateTime**](OffsetDateTime.md) | Last updation time |  [optional]
**remoteAddress** | **String** | Remote address used to connect to the cluster | 
**authToken** | **String** | Authentication needed for the cluster | 
**dockerUsername** | **String** | Docker registry username | 
**dockerPassword** | **String** | Docker registry password | 
**dockerRegistry** | **String** | Docker registry URL. Dockerhub is used by default. |  [optional]
**storageClass** | **String** | Storage class to use for datasets |  [optional]
**status** | **Boolean** | Readiness of the cluster |  [optional]
**meta** | **Object** | Additional metadata |  [optional]
**userId** | **Integer** | User ID |  [optional]
**organisationId** | **Integer** | Organisation ID |  [optional]



