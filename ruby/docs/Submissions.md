# AIcrowdEvaluations::Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**grader_id** | **Integer** | Grader identifier | 
**submission_data** | **Object** | URL to the submission code | [optional] 
**status** | **String** | Current status of the submission | [optional] 
**output** | **String** | S3 link of the output (available after the evaluation) | [optional] 
**additional_outputs** | **Object** | Array of any additional outputs | [optional] 
**logs** | **String** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | **DateTime** | Evaluation start time | [optional] 
**ended** | **DateTime** | Evaluation end time | [optional] 
**meta** | **String** | Additional meta data of the grader | [optional] 
**wf_name** | **String** | Name of the workflow used to evaluate submission | [optional] 
**user_id** | **Integer** | User ID | [optional] 
**organisation_id** | **Integer** | Organisation ID | [optional] 


