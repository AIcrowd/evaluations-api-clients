# SwaggerClient::Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID | [optional] 
**created** | **DateTime** | Creation time | [optional] 
**updated** | **DateTime** | Last updation time | [optional] 
**participant_id** | **Integer** | Participant identifier | [optional] 
**round_id** | **Integer** | Round identifier | [optional] 
**grader_id** | **Integer** | Grader identifier | 
**submission_code** | **String** | URL to the submission code | 
**status** | **String** | Current status of the submission | [optional] 
**output** | **String** | S3 link of the output (available after the evaluation) | [optional] 
**additional_outputs** | **Object** | Array of any additional outputs | [optional] 
**logs** | **Object** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | **DateTime** | Evaluation start time | [optional] 
**ended** | **DateTime** | Evaluation end time | [optional] 
**meta** | **Object** | Additional meta-data | [optional] 
**user_id** | **Integer** | User ID | [optional] 
**organisation_id** | **Integer** | Organisation ID | [optional] 


