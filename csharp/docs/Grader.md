# Com.AIcrowd.Evaluations.Model.Grader
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int?** | ID | [optional] 
**Created** | **DateTime?** | Creation time | [optional] 
**Updated** | **DateTime?** | Last updation time | [optional] 
**DatasetUrl** | **string** | S3 link of the Dataset | [optional] 
**CodeAccessMode** | **string** | git/http | 
**ClusterId** | **int?** | Cluster to run the grader on | [optional] 
**WorkflowSpec** | **Object** | Argo workflow template spec | [optional] 
**EvaluationCode** | **string** | S3 link to the zip file containing the code that will be used for the evaluation | 
**StorageCapacity** | **string** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. | [optional] 
**Logs** | **Object** | Logs from argo workflow | [optional] 
**Meta** | **Object** | Additional meta data of the grader | [optional] 
**Status** | **string** | Status of the grader - True if it ready, False otherwise | [optional] 
**UserId** | **int?** | User ID | [optional] 
**OrganisationId** | **int?** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

