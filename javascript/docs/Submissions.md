# AicrowdEvaluations.Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Number** | ID | [optional] 
**created** | **Date** | Creation time | [optional] 
**updated** | **Date** | Last updation time | [optional] 
**graderId** | **Number** | Grader identifier | 
**submissionData** | **Object** | URL to the submission code | [optional] 
**status** | **String** | Current status of the submission | [optional] 
**output** | **String** | S3 link of the output (available after the evaluation) | [optional] 
**additionalOutputs** | **Object** | Array of any additional outputs | [optional] 
**logs** | **String** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | **Date** | Evaluation start time | [optional] 
**ended** | **Date** | Evaluation end time | [optional] 
**meta** | **String** | Additional meta data of the grader | [optional] 
**wfName** | **String** | Name of the workflow used to evaluate submission | [optional] 
**workflowPriority** | **Number** | Workflow priority to assign | [optional] 
**userId** | **Number** | User ID | [optional] 
**organisationId** | **Number** | Organisation ID | [optional] 


