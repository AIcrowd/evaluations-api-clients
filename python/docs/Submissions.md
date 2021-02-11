# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | **datetime** | Creation time | [optional] 
**updated** | **datetime** | Last updation time | [optional] 
**grader_id** | **int** | Grader identifier | 
**submission_data** | **object** | URL to the submission code | [optional] 
**status** | **str** | Current status of the submission | [optional] 
**output** | **str** | S3 link of the output (available after the evaluation) | [optional] 
**additional_outputs** | **object** | Array of any additional outputs | [optional] 
**logs** | **str** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | **datetime** | Evaluation start time | [optional] 
**ended** | **datetime** | Evaluation end time | [optional] 
**meta** | **str** | Additional meta data of the grader | [optional] 
**wf_name** | **str** | Name of the workflow used to evaluate submission | [optional] 
**workflow_priority** | **int** | Workflow priority to assign | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


