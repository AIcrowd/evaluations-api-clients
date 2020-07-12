# aicrowd_evaluations.SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_submission**](SubmissionsApi.md#create_submission) | **POST** /submissions/ | 
[**delete_submission**](SubmissionsApi.md#delete_submission) | **DELETE** /submissions/{submission_id} | 
[**get_submission**](SubmissionsApi.md#get_submission) | **GET** /submissions/{submission_id} | 
[**get_submission_data**](SubmissionsApi.md#get_submission_data) | **GET** /submissions/{submission_id}/data | 
[**get_submission_logs**](SubmissionsApi.md#get_submission_logs) | **GET** /submissions/{submission_id}/logs | 
[**list_submissions**](SubmissionsApi.md#list_submissions) | **GET** /submissions/ | 
[**retry_submissions**](SubmissionsApi.md#retry_submissions) | **POST** /submissions/retry | 


# **create_submission**
> Submissions create_submission(payload, x_fields=x_fields)



Make a new submission

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
payload = aicrowd_evaluations.Submissions() # Submissions | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.create_submission(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->create_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_submission**
> delete_submission(submission_id)



Stop evaluation of a submission and delete it

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
submission_id = 56 # int | 

try:
    api_instance.delete_submission(submission_id)
except ApiException as e:
    print("Exception when calling SubmissionsApi->delete_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission**
> Submissions get_submission(submission_id, x_fields=x_fields)



Get details of a submission by its ID

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
submission_id = 56 # int | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_submission(submission_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->get_submission: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_data**
> get_submission_data(submission_id)



Get the submission data by submission ID

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
submission_id = 56 # int | 

try:
    api_instance.get_submission_data(submission_id)
except ApiException as e:
    print("Exception when calling SubmissionsApi->get_submission_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_submission_logs**
> get_submission_logs(submission_id)



Get the submission logs by submission ID

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
submission_id = 56 # int | 

try:
    api_instance.get_submission_logs(submission_id)
except ApiException as e:
    print("Exception when calling SubmissionsApi->get_submission_logs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_submissions**
> list[Submissions] list_submissions(meta=meta, status=status, grader_id=grader_id, user_id=user_id, x_fields=x_fields)



List all submissions available

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
meta = 'meta_example' # str | Fetch submissions containing this meta value (optional)
status = 'status_example' # str | Fetch submissions with this status (optional)
grader_id = 56 # int | Fetch submissions for a grader (optional)
user_id = 56 # int | Fetch submissions created by the user (optional)
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.list_submissions(meta=meta, status=status, grader_id=grader_id, user_id=user_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->list_submissions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **str**| Fetch submissions containing this meta value | [optional] 
 **status** | **str**| Fetch submissions with this status | [optional] 
 **grader_id** | **int**| Fetch submissions for a grader | [optional] 
 **user_id** | **int**| Fetch submissions created by the user | [optional] 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retry_submissions**
> SubmissionRetry retry_submissions(payload, x_fields=x_fields)



Retry the submissions with given IDs

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
api_instance = aicrowd_evaluations.SubmissionsApi(aicrowd_evaluations.ApiClient(configuration))
payload = aicrowd_evaluations.SubmissionRetryInput() # SubmissionRetryInput | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.retry_submissions(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->retry_submissions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

