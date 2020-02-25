# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | ID | [optional] [default to null]
**Created** | [**time.Time**](time.Time.md) | Creation time | [optional] [default to null]
**Updated** | [**time.Time**](time.Time.md) | Last updation time | [optional] [default to null]
**ParticipantId** | **int32** | Participant identifier | [optional] [default to null]
**RoundId** | **int32** | Round identifier | [optional] [default to null]
**GraderId** | **int32** | Grader identifier | [default to null]
**SubmissionCode** | **string** | URL to the submission code | [default to null]
**Status** | **string** | Current status of the submission | [optional] [default to null]
**Output** | **string** | S3 link of the output (available after the evaluation) | [optional] [default to null]
**AdditionalOutputs** | [***interface{}**](interface{}.md) | Array of any additional outputs | [optional] [default to null]
**Logs** | [***interface{}**](interface{}.md) | S3 link of the STDOUT of the evaluation | [optional] [default to null]
**Started** | [**time.Time**](time.Time.md) | Evaluation start time | [optional] [default to null]
**Ended** | [**time.Time**](time.Time.md) | Evaluation end time | [optional] [default to null]
**Meta** | [***interface{}**](interface{}.md) | Additional meta-data | [optional] [default to null]
**UserId** | **int32** | User ID | [optional] [default to null]
**OrganisationId** | **int32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


