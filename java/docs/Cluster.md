
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
**dockerRegistry** | **String** | Docker registry URL. Dockerhub is used by default. |  [optional]
**namespace** | **String** | Kubernetes namespace to run the workflows in |  [optional]
**storageClass** | **String** | Storage class to use for datasets |  [optional]
**status** | **Boolean** | Readiness of the cluster |  [optional]
**wfName** | **String** | Name of the workflow used to setup grader |  [optional]
**argoHost** | **String** | External IP exposed by LoadBalancer Service of argo-server deployment |  [optional]
**argoToken** | **String** | Argo server token required for authentication |  [optional]
**userId** | **Integer** | User ID |  [optional]
**organisationId** | **Integer** | Organisation ID |  [optional]



