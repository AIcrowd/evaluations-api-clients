# swagger_client.SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_submission_dao**](SubmissionsApi.md#delete_submission_dao) | **DELETE** /submissions/{submission_id} | 
[**get_submission_dao**](SubmissionsApi.md#get_submission_dao) | **GET** /submissions/{submission_id} | 
[**get_submission_list_dao**](SubmissionsApi.md#get_submission_list_dao) | **GET** /submissions/ | 
[**post_submission_list_dao**](SubmissionsApi.md#post_submission_list_dao) | **POST** /submissions/ | 


# **delete_submission_dao**
> delete_submission_dao(submission_id)



Stop evaluation of a submission

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = swagger_client.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SubmissionsApi(swagger_client.ApiClient(configuration))
submission_id = 56 # int | 

try:
    api_instance.delete_submission_dao(submission_id)
except ApiException as e:
    print("Exception when calling SubmissionsApi->delete_submission_dao: %s\n" % e)
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

# **get_submission_dao**
> Submissions get_submission_dao(submission_id, x_fields=x_fields)



Get details of a submission

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = swagger_client.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SubmissionsApi(swagger_client.ApiClient(configuration))
submission_id = 56 # int | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_submission_dao(submission_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->get_submission_dao: %s\n" % e)
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

# **get_submission_list_dao**
> list[Submissions] get_submission_list_dao(x_fields=x_fields)



Get all submissions

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = swagger_client.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SubmissionsApi(swagger_client.ApiClient(configuration))
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_submission_list_dao(x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->get_submission_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_submission_list_dao**
> Submissions post_submission_list_dao(payload, x_fields=x_fields)



Make a new submission

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure API key authorization: api_key
configuration = swagger_client.Configuration()
configuration.api_key['AUTHORIZATION'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['AUTHORIZATION'] = 'Bearer'

# create an instance of the API class
api_instance = swagger_client.SubmissionsApi(swagger_client.ApiClient(configuration))
payload = swagger_client.Submissions() # Submissions | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.post_submission_list_dao(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SubmissionsApi->post_submission_list_dao: %s\n" % e)
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

