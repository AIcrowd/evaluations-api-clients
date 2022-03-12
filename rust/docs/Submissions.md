# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** | ID | [optional] [default to null]
**created** | **String** | Creation time | [optional] [default to null]
**updated** | **String** | Last updation time | [optional] [default to null]
**grader_id** | **i32** | Grader identifier | [default to null]
**submission_data** | [***Value**](Value.md) | URL to the submission code | [optional] [default to null]
**status** | **String** | Current status of the submission | [optional] [default to null]
**output** | **String** | S3 link of the output (available after the evaluation) | [optional] [default to null]
**additional_outputs** | [***Value**](Value.md) | Array of any additional outputs | [optional] [default to null]
**logs** | **String** | S3 link of the STDOUT of the evaluation | [optional] [default to null]
**started** | **String** | Evaluation start time | [optional] [default to null]
**ended** | **String** | Evaluation end time | [optional] [default to null]
**meta** | **String** | Additional meta data of the grader | [optional] [default to null]
**wf_name** | **String** | Name of the workflow used to evaluate submission | [optional] [default to null]
**workflow_priority** | **i32** | Workflow priority to assign | [optional] [default to null]
**minimal_run** | **bool** | Remove steps like build-image, services, etc from the workflow. Only valid for retries | [optional] [default to null]
**user_id** | **i32** | User ID | [optional] [default to null]
**organisation_id** | **i32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


