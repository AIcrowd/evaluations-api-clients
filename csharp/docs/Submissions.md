# Com.AIcrowd.Evaluations.Model.Submissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int?** | ID | [optional] 
**Created** | **DateTime?** | Creation time | [optional] 
**Updated** | **DateTime?** | Last updation time | [optional] 
**GraderId** | **int?** | Grader identifier | 
**SubmissionData** | **Object** | URL to the submission code | [optional] 
**Status** | **string** | Current status of the submission | [optional] 
**Output** | **string** | S3 link of the output (available after the evaluation) | [optional] 
**AdditionalOutputs** | **Object** | Array of any additional outputs | [optional] 
**Logs** | **string** | S3 link of the STDOUT of the evaluation | [optional] 
**Started** | **DateTime?** | Evaluation start time | [optional] 
**Ended** | **DateTime?** | Evaluation end time | [optional] 
**Meta** | **string** | Additional meta data of the grader | [optional] 
**WfName** | **string** | Name of the workflow used to evaluate submission | [optional] 
**WorkflowPriority** | **int?** | Workflow priority to assign | [optional] 
**UserId** | **int?** | User ID | [optional] 
**OrganisationId** | **int?** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

