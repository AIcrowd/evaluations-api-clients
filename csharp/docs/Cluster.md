# Com.AIcrowd.Evaluations.Model.Cluster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int?** | ID | [optional] 
**Created** | **DateTime?** | Creation time | [optional] 
**Updated** | **DateTime?** | Last updation time | [optional] 
**RemoteAddress** | **string** | Remote address used to connect to the cluster | 
**AuthToken** | **string** | Authentication needed for the cluster | 
**DockerUsername** | **string** | Docker registry username | 
**DockerRegistry** | **string** | Docker registry URL. Dockerhub is used by default. | [optional] 
**Namespace** | **string** | Kubernetes namespace to run the workflows in | [optional] 
**StorageClass** | **string** | Storage class to use for datasets | [optional] 
**Status** | **bool?** | Readiness of the cluster | [optional] 
**WfName** | **string** | Name of the workflow used to setup grader | [optional] 
**ArgoHost** | **string** | External IP exposed by LoadBalancer Service of argo-server deployment | [optional] 
**ArgoToken** | **string** | Argo server token required for authentication | [optional] 
**UserId** | **int?** | User ID | [optional] 
**OrganisationId** | **int?** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

