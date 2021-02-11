# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | ID | [optional] [default to null]
**Created** | [**time.Time**](time.Time.md) | Creation time | [optional] [default to null]
**Updated** | [**time.Time**](time.Time.md) | Last updation time | [optional] [default to null]
**GraderId** | **int32** | Grader identifier | [default to null]
**SubmissionData** | [***interface{}**](interface{}.md) | URL to the submission code | [optional] [default to null]
**Status** | **string** | Current status of the submission | [optional] [default to null]
**Output** | **string** | S3 link of the output (available after the evaluation) | [optional] [default to null]
**AdditionalOutputs** | [***interface{}**](interface{}.md) | Array of any additional outputs | [optional] [default to null]
**Logs** | **string** | S3 link of the STDOUT of the evaluation | [optional] [default to null]
**Started** | [**time.Time**](time.Time.md) | Evaluation start time | [optional] [default to null]
**Ended** | [**time.Time**](time.Time.md) | Evaluation end time | [optional] [default to null]
**Meta** | **string** | Additional meta data of the grader | [optional] [default to null]
**WfName** | **string** | Name of the workflow used to evaluate submission | [optional] [default to null]
**WorkflowPriority** | **int32** | Workflow priority to assign | [optional] [default to null]
**UserId** | **int32** | User ID | [optional] [default to null]
**OrganisationId** | **int32** | Organisation ID | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


