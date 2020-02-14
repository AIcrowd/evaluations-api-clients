# EvaluationsApi.Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Number** | ID | [optional] 
**created** | **Date** | Creation time | [optional] 
**updated** | **Date** | Last updation time | [optional] 
**participantId** | **Number** | Participant identifier | [optional] 
**roundId** | **Number** | Round identifier | [optional] 
**graderId** | **Number** | Grader identifier | 
**submissionCode** | **String** | URL to the submission code | 
**status** | **String** | Current status of the submission | [optional] 
**output** | **String** | S3 link of the output (available after the evaluation) | [optional] 
**additionalOutputs** | **String** | Array of any additional outputs | [optional] 
**logs** | **Object** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | **Date** | Evaluation start time | [optional] 
**ended** | **Date** | Evaluation end time | [optional] 
**meta** | **Object** | Additional meta-data | [optional] 
**userId** | **Number** | User ID | [optional] 
**organisationId** | **Number** | Organisation ID | [optional] 


