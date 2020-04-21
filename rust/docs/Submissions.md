# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** | ID | [optional] [default to null]
**created** | **String** | Creation time | [optional] [default to null]
**updated** | **String** | Last updation time | [optional] [default to null]
**participant_id** | **i32** | Participant identifier | [optional] [default to null]
**round_id** | **i32** | Round identifier | [optional] [default to null]
**grader_id** | **i32** | Grader identifier | [default to null]
**submission_data** | [***Value**](Value.md) | URL to the submission code | [optional] [default to null]
**status** | **String** | Current status of the submission | [optional] [default to null]
**output** | **String** | S3 link of the output (available after the evaluation) | [optional] [default to null]
**additional_outputs** | [***Value**](Value.md) | Array of any additional outputs | [optional] [default to null]
**logs** | [***Value**](Value.md) | S3 link of the STDOUT of the evaluation | [optional] [default to null]
**started** | **String** | Evaluation start time | [optional] [default to null]
**ended** | **String** | Evaluation end time | [optional] [default to null]
**meta** | [***Value**](Value.md) | Additional meta-data | [optional] [default to null]
**user_id** | **i32** | User ID | [optional] [default to null]
**organisation_id** | **i32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


