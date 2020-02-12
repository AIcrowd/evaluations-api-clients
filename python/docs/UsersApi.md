# swagger_client.UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user_dao**](UsersApi.md#delete_user_dao) | **DELETE** /users/{user_id} | 
[**get_user_dao**](UsersApi.md#get_user_dao) | **GET** /users/{user_id} | 
[**get_user_list_dao**](UsersApi.md#get_user_list_dao) | **GET** /users/ | 
[**post_user_list_dao**](UsersApi.md#post_user_list_dao) | **POST** /users/ | 
[**put_quota_dao**](UsersApi.md#put_quota_dao) | **PUT** /users/addquota/{user_id} | 
[**put_user_dao**](UsersApi.md#put_user_dao) | **PUT** /users/{user_id} | 


# **delete_user_dao**
> delete_user_dao(user_id)



Delete a user

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
api_instance = swagger_client.UsersApi(swagger_client.ApiClient(configuration))
user_id = 56 # int | User identifier

try:
    api_instance.delete_user_dao(user_id)
except ApiException as e:
    print("Exception when calling UsersApi->delete_user_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_dao**
> User get_user_dao(user_id, x_fields=x_fields)



Get information of a user

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
api_instance = swagger_client.UsersApi(swagger_client.ApiClient(configuration))
user_id = 56 # int | User identifier
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_user_dao(user_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_user_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_list_dao**
> list[User] get_user_list_dao(x_fields=x_fields)



Get all user

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
api_instance = swagger_client.UsersApi(swagger_client.ApiClient(configuration))
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_user_list_dao(x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->get_user_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[User]**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_user_list_dao**
> User post_user_list_dao(payload, x_fields=x_fields)



Create a new user

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
api_instance = swagger_client.UsersApi(swagger_client.ApiClient(configuration))
payload = swagger_client.User() # User | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.post_user_list_dao(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->post_user_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_quota_dao**
> put_quota_dao(user_id, payload)



Add or subtract quota for a user

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
api_instance = swagger_client.UsersApi(swagger_client.ApiClient(configuration))
user_id = 56 # int | User identifier
payload = swagger_client.UserQuota() # UserQuota | 

try:
    api_instance.put_quota_dao(user_id, payload)
except ApiException as e:
    print("Exception when calling UsersApi->put_quota_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 
 **payload** | [**UserQuota**](UserQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_user_dao**
> User put_user_dao(user_id, payload, x_fields=x_fields)



Update a user

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
api_instance = swagger_client.UsersApi(swagger_client.ApiClient(configuration))
user_id = 56 # int | User identifier
payload = swagger_client.User() # User | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.put_user_dao(user_id, payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UsersApi->put_user_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier | 
 **payload** | [**User**](User.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

