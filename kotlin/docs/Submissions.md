
# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.Int** | ID |  [optional]
**created** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Creation time |  [optional]
**updated** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Last updation time |  [optional]
**grader_id** | **kotlin.Int** | Grader identifier | 
**submission_data** | [**kotlin.Any**](kotlin.Any.md) | URL to the submission code |  [optional]
**status** | **kotlin.String** | Current status of the submission |  [optional]
**output** | **kotlin.String** | S3 link of the output (available after the evaluation) |  [optional]
**additional_outputs** | [**kotlin.Any**](kotlin.Any.md) | Array of any additional outputs |  [optional]
**logs** | **kotlin.String** | S3 link of the STDOUT of the evaluation |  [optional]
**started** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Evaluation start time |  [optional]
**ended** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Evaluation end time |  [optional]
**meta** | **kotlin.String** | Additional meta data of the grader |  [optional]
**wf_name** | **kotlin.String** | Name of the workflow used to evaluate submission |  [optional]
**user_id** | **kotlin.Int** | User ID |  [optional]
**organisation_id** | **kotlin.Int** | Organisation ID |  [optional]



