# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | [**\DateTime**](\DateTime.md) | Creation time | [optional] 
**updated** | [**\DateTime**](\DateTime.md) | Last updation time | [optional] 
**grader_id** | **int** | Grader identifier | 
**submission_data** | **object** | URL to the submission code | [optional] 
**status** | **string** | Current status of the submission | [optional] 
**output** | **string** | S3 link of the output (available after the evaluation) | [optional] 
**additional_outputs** | **object** | Array of any additional outputs | [optional] 
**logs** | **string** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | [**\DateTime**](\DateTime.md) | Evaluation start time | [optional] 
**ended** | [**\DateTime**](\DateTime.md) | Evaluation end time | [optional] 
**meta** | **string** | Additional meta data of the grader | [optional] 
**wf_name** | **string** | Name of the workflow used to evaluate submission | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


