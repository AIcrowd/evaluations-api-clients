# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** | ID | [optional] [default to null]
**created** | **String** | Creation time | [optional] [default to null]
**updated** | **String** | Last updation time | [optional] [default to null]
**dataset_url** | **String** | S3 link of the Dataset | [optional] [default to null]
**code_access_mode** | **String** | git/http | [default to null]
**cluster_id** | **i32** | Cluster to run the grader on | [optional] [default to null]
**workflow_spec** | [***Value**](Value.md) | Argo workflow template spec | [optional] [default to null]
**evaluation_code** | **String** | S3 link to the zip file containing the code that will be used for the evaluation | [default to null]
**storage_capacity** | **String** | Size of the dataset partition to request. Please provide at least 2x of the size of the dataset. | [optional] [default to null]
**logs** | [***Value**](Value.md) | Logs from argo workflow | [optional] [default to null]
**meta** | [***Value**](Value.md) | Additional meta data of the grader | [optional] [default to null]
**status** | **String** | Status of the grader - True if it ready, False otherwise | [optional] [default to null]
**user_id** | **i32** | User ID | [optional] [default to null]
**organisation_id** | **i32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


