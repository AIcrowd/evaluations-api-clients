# Submissions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID | [optional] 
**created** | [**\DateTime**](\DateTime.md) | Creation time | [optional] 
**updated** | [**\DateTime**](\DateTime.md) | Last updation time | [optional] 
**participant_id** | **int** | Participant identifier | [optional] 
**round_id** | **int** | Round identifier | [optional] 
**grader_id** | **int** | Grader identifier | 
**submission_code** | **object** | URL to the submission code | 
**status** | **string** | Current status of the submission | [optional] 
**output** | **string** | S3 link of the output (available after the evaluation) | [optional] 
**additional_outputs** | **object** | Array of any additional outputs | [optional] 
**logs** | **object** | S3 link of the STDOUT of the evaluation | [optional] 
**started** | [**\DateTime**](\DateTime.md) | Evaluation start time | [optional] 
**ended** | [**\DateTime**](\DateTime.md) | Evaluation end time | [optional] 
**meta** | **object** | Additional meta-data | [optional] 
**user_id** | **int** | User ID | [optional] 
**organisation_id** | **int** | Organisation ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


