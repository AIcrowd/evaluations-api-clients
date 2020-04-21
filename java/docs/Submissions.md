
# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID |  [optional]
**created** | [**OffsetDateTime**](OffsetDateTime.md) | Creation time |  [optional]
**updated** | [**OffsetDateTime**](OffsetDateTime.md) | Last updation time |  [optional]
**participantId** | **Integer** | Participant identifier |  [optional]
**roundId** | **Integer** | Round identifier |  [optional]
**graderId** | **Integer** | Grader identifier | 
**submissionData** | **Object** | URL to the submission code |  [optional]
**status** | **String** | Current status of the submission |  [optional]
**output** | **String** | S3 link of the output (available after the evaluation) |  [optional]
**additionalOutputs** | **Object** | Array of any additional outputs |  [optional]
**logs** | **Object** | S3 link of the STDOUT of the evaluation |  [optional]
**started** | [**OffsetDateTime**](OffsetDateTime.md) | Evaluation start time |  [optional]
**ended** | [**OffsetDateTime**](OffsetDateTime.md) | Evaluation end time |  [optional]
**meta** | **Object** | Additional meta-data |  [optional]
**userId** | **Integer** | User ID |  [optional]
**organisationId** | **Integer** | Organisation ID |  [optional]



