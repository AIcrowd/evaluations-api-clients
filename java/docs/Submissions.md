
# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID |  [optional]
**created** | [**OffsetDateTime**](OffsetDateTime.md) | Creation time |  [optional]
**updated** | [**OffsetDateTime**](OffsetDateTime.md) | Last updation time |  [optional]
**graderId** | **Integer** | Grader identifier | 
**submissionData** | **Object** | URL to the submission code |  [optional]
**status** | **String** | Current status of the submission |  [optional]
**output** | **String** | S3 link of the output (available after the evaluation) |  [optional]
**additionalOutputs** | **Object** | Array of any additional outputs |  [optional]
**logs** | **String** | S3 link of the STDOUT of the evaluation |  [optional]
**started** | [**OffsetDateTime**](OffsetDateTime.md) | Evaluation start time |  [optional]
**ended** | [**OffsetDateTime**](OffsetDateTime.md) | Evaluation end time |  [optional]
**meta** | **String** | Additional meta data of the grader |  [optional]
**wfName** | **String** | Name of the workflow used to evaluate submission |  [optional]
**workflowPriority** | **Integer** | Workflow priority to assign |  [optional]
**userId** | **Integer** | User ID |  [optional]
**organisationId** | **Integer** | Organisation ID |  [optional]



