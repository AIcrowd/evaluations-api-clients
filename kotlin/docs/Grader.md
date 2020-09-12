
# Grader

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **kotlin.Int** | ID |  [optional]
**created** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Creation time |  [optional]
**updated** | [**java.time.LocalDateTime**](java.time.LocalDateTime.md) | Last updation time |  [optional]
**dataset** | [**kotlin.Any**](kotlin.Any.md) | Dataset metadata |  [optional]
**cluster_id** | **kotlin.Int** | Cluster to run the grader on |  [optional]
**description** | **kotlin.String** | Description of the grader |  [optional]
**workflow_spec** | [**kotlin.Any**](kotlin.Any.md) | Argo workflow template spec |  [optional]
**evaluator_repo** | **kotlin.String** | Git URL of the repository containing the code that will be used for the evaluation | 
**evaluator_repo_tag** | **kotlin.String** | Git branch/tag that should be used with the evaluator repository. |  [optional]
**name** | **kotlin.String** | Name of the grader |  [optional]
**notifications** | **kotlin.String** | Notifications available for the grader. |  [optional]
**logs** | **kotlin.String** | Logs from argo workflow |  [optional]
**meta** | **kotlin.String** | Additional meta data of the grader |  [optional]
**status** | **kotlin.String** | Status of the grader - True if it ready, False otherwise |  [optional]
**secrets** | [**kotlin.Any**](kotlin.Any.md) | List of key:value pair of secrets that will be replace &#x60;{key}&#x60; in aicrowd.yaml |  [optional]
**wf_name** | **kotlin.String** | Name of the workflow used to setup grader |  [optional]
**allowed_extensions** | [**kotlin.Any**](kotlin.Any.md) | Allowed extensions for the grader |  [optional]
**user_id** | **kotlin.Int** | User ID |  [optional]
**organisation_id** | **kotlin.Int** | Organisation ID |  [optional]



