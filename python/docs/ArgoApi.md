# aicrowd_evaluations.ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_generic_feedback_contract**](ArgoApi.md#post_generic_feedback_contract) | **POST** /argo/{model_name}/{object_id} | 
[**post_grader_feedback_dao**](ArgoApi.md#post_grader_feedback_dao) | **POST** /argo/graders/{grader_id} | 
[**post_submission_feedback_dao**](ArgoApi.md#post_submission_feedback_dao) | **POST** /argo/submissions/{submission_id} | 


# **post_generic_feedback_contract**
> post_generic_feedback_contract(model_name, object_id, payload)



Update the status of an object

### Example
```python
from __future__ import print_function
import time
import aicrowd_evaluations
from aicrowd_evaluations.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = aicrowd_evaluations.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = aicrowd_evaluations.ArgoApi(aicrowd_evaluations.ApiClient(configuration))
model_name = 'model_name_example' # str | 
object_id = 56 # int | 
payload = aicrowd_evaluations.GenericFeedback() # GenericFeedback | 

try:
    api_instance.post_generic_feedback_contract(model_name, object_id, payload)
except ApiException as e:
    print("Exception when calling ArgoApi->post_generic_feedback_contract: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_name** | **str**|  | 
 **object_id** | **int**|  | 
 **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_feedback_dao**
> post_grader_feedback_dao(grader_id, payload)



Update the grader details

### Example
```python
from __future__ import print_function
import time
import aicrowd_evaluations
from aicrowd_evaluations.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = aicrowd_evaluations.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = aicrowd_evaluations.ArgoApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 
payload = aicrowd_evaluations.GraderFeedback() # GraderFeedback | 

try:
    api_instance.post_grader_feedback_dao(grader_id, payload)
except ApiException as e:
    print("Exception when calling ArgoApi->post_grader_feedback_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_submission_feedback_dao**
> post_submission_feedback_dao(submission_id, payload)



Update the submission details

### Example
```python
from __future__ import print_function
import time
import aicrowd_evaluations
from aicrowd_evaluations.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = aicrowd_evaluations.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = aicrowd_evaluations.ArgoApi(aicrowd_evaluations.ApiClient(configuration))
submission_id = 56 # int | 
payload = aicrowd_evaluations.SubmissionFeedback() # SubmissionFeedback | 

try:
    api_instance.post_submission_feedback_dao(submission_id, payload)
except ApiException as e:
    print("Exception when calling ArgoApi->post_submission_feedback_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

