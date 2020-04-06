
# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID |  [optional]
**created** | [**OffsetDateTime**](OffsetDateTime.md) | Creation time |  [optional]
**updated** | [**OffsetDateTime**](OffsetDateTime.md) | Last updation time |  [optional]
**dataset** | **Object** | Dataset metadata |  [optional]
**clusterId** | **Integer** | Cluster to run the grader on |  [optional]
**workflowSpec** | **Object** | Argo workflow template spec |  [optional]
**evaluatorRepo** | **String** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluatorRepoTag** | **String** | Git branch/tag that should be used with the evaluator repository. |  [optional]
**notifications** | **String** | Notifications available for the grader. |  [optional]
**logs** | **Object** | Logs from argo workflow |  [optional]
**meta** | **Object** | Additional meta data of the grader |  [optional]
**status** | **String** | Status of the grader - True if it ready, False otherwise |  [optional]
**submissionTypes** | **Object** | Type of submissions allowed on the grader |  [optional]
**userId** | **Integer** | User ID |  [optional]
**organisationId** | **Integer** | Organisation ID |  [optional]



