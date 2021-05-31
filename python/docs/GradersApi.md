# aicrowd_evaluations.GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_grader**](GradersApi.md#archive_grader) | **POST** /graders/{grader_id}/archive | 
[**create_grader**](GradersApi.md#create_grader) | **POST** /graders/ | 
[**delete_grader**](GradersApi.md#delete_grader) | **DELETE** /graders/{grader_id} | 
[**download_grader_logs**](GradersApi.md#download_grader_logs) | **GET** /graders/{grader_id}/logs/download | 
[**get_grader**](GradersApi.md#get_grader) | **GET** /graders/{grader_id} | 
[**get_grader_logs**](GradersApi.md#get_grader_logs) | **GET** /graders/{grader_id}/logs | 
[**list_graders**](GradersApi.md#list_graders) | **GET** /graders/ | 
[**unarchive_grader**](GradersApi.md#unarchive_grader) | **POST** /graders/{grader_id}/unarchive | 
[**update_grader**](GradersApi.md#update_grader) | **PATCH** /graders/{grader_id} | 


# **archive_grader**
> archive_grader(grader_id)



Archive a grader

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 

try:
    api_instance.archive_grader(grader_id)
except ApiException as e:
    print("Exception when calling GradersApi->archive_grader: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_grader**
> Grader create_grader(payload, x_fields=x_fields)



Create a new grader

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
payload = aicrowd_evaluations.Grader() # Grader | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.create_grader(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GradersApi->create_grader: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_grader**
> delete_grader(grader_id)



Delete a grader by its ID

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 

try:
    api_instance.delete_grader(grader_id)
except ApiException as e:
    print("Exception when calling GradersApi->delete_grader: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_grader_logs**
> download_grader_logs(grader_id)



Get the grader logs by submission ID

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 

try:
    api_instance.download_grader_logs(grader_id)
except ApiException as e:
    print("Exception when calling GradersApi->download_grader_logs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader**
> Grader get_grader(grader_id, x_fields=x_fields)



Get details of a grader by its ID

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_grader(grader_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GradersApi->get_grader: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_logs**
> GraderLogs get_grader_logs(grader_id, step=step, log_lines=log_lines, x_fields=x_fields)



Get grader logs from loki

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 
step = 56 # int | Granularity of logs (optional)
log_lines = 56 # int | Number of lines to fetch (optional)
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_grader_logs(grader_id, step=step, log_lines=log_lines, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GradersApi->get_grader_logs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **step** | **int**| Granularity of logs | [optional] 
 **log_lines** | **int**| Number of lines to fetch | [optional] 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**GraderLogs**](GraderLogs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_graders**
> list[Grader] list_graders(per_page=per_page, page=page, meta=meta, name=name, status=status, user_id=user_id, x_fields=x_fields)



List all graders available

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
per_page = 'per_page_example' # str | Results to display per page (optional)
page = 'page_example' # str | Page number (optional)
meta = 'meta_example' # str | Fetch graders containing this meta value (optional)
name = 'name_example' # str | Fetch grader containing name (optional)
status = 'status_example' # str | Fetch graders with this status (optional)
user_id = 56 # int | Fetch graders created by the user (optional)
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.list_graders(per_page=per_page, page=page, meta=meta, name=name, status=status, user_id=user_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GradersApi->list_graders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **str**| Results to display per page | [optional] 
 **page** | **str**| Page number | [optional] 
 **meta** | **str**| Fetch graders containing this meta value | [optional] 
 **name** | **str**| Fetch grader containing name | [optional] 
 **status** | **str**| Fetch graders with this status | [optional] 
 **user_id** | **int**| Fetch graders created by the user | [optional] 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unarchive_grader**
> unarchive_grader(grader_id)



Unarchive a grader

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 

try:
    api_instance.unarchive_grader(grader_id)
except ApiException as e:
    print("Exception when calling GradersApi->unarchive_grader: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_grader**
> Grader update_grader(grader_id, payload, x_fields=x_fields)



Update meta details of a grader by its ID. Warning: There is no data validation.

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
api_instance = aicrowd_evaluations.GradersApi(aicrowd_evaluations.ApiClient(configuration))
grader_id = 56 # int | 
payload = aicrowd_evaluations.GraderMeta() # GraderMeta | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.update_grader(grader_id, payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GradersApi->update_grader: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

