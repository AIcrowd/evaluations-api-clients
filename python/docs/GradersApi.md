# aicrowd_evaluations.GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_grader**](GradersApi.md#create_grader) | **POST** /graders/ | 
[**delete_grader**](GradersApi.md#delete_grader) | **DELETE** /graders/{grader_id} | 
[**get_grader**](GradersApi.md#get_grader) | **GET** /graders/{grader_id} | 
[**list_graders**](GradersApi.md#list_graders) | **GET** /graders/ | 


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

# **list_graders**
> list[Grader] list_graders(x_fields=x_fields)



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
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.list_graders(x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GradersApi->list_graders: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

