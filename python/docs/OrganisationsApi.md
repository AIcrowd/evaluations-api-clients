# swagger_client.OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_organisation_dao**](OrganisationsApi.md#delete_organisation_dao) | **DELETE** /organisations/{organisation_id} | 
[**get_organisation_dao**](OrganisationsApi.md#get_organisation_dao) | **GET** /organisations/{organisation_id} | 
[**get_organisation_list_dao**](OrganisationsApi.md#get_organisation_list_dao) | **GET** /organisations/ | 
[**post_organisation_list_dao**](OrganisationsApi.md#post_organisation_list_dao) | **POST** /organisations/ | 
[**put_organisation_dao**](OrganisationsApi.md#put_organisation_dao) | **PUT** /organisations/{organisation_id} | 
[**put_quota_dao**](OrganisationsApi.md#put_quota_dao) | **PUT** /organisations/addquota/{organisation_id} | 


# **delete_organisation_dao**
> delete_organisation_dao(organisation_id)



Delete an Organisation

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
api_instance = swagger_client.OrganisationsApi(swagger_client.ApiClient(configuration))
organisation_id = 56 # int | Organisation identifier

try:
    api_instance.delete_organisation_dao(organisation_id)
except ApiException as e:
    print("Exception when calling OrganisationsApi->delete_organisation_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation_dao**
> Organisation get_organisation_dao(organisation_id, x_fields=x_fields)



Get information of an organisation

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
api_instance = swagger_client.OrganisationsApi(swagger_client.ApiClient(configuration))
organisation_id = 56 # int | Organisation identifier
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_organisation_dao(organisation_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganisationsApi->get_organisation_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation_list_dao**
> list[Organisation] get_organisation_list_dao(x_fields=x_fields)



Get all organisations

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
api_instance = swagger_client.OrganisationsApi(swagger_client.ApiClient(configuration))
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_organisation_list_dao(x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganisationsApi->get_organisation_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[Organisation]**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_organisation_list_dao**
> Organisation post_organisation_list_dao(payload, x_fields=x_fields)



Create a new organisation

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
api_instance = swagger_client.OrganisationsApi(swagger_client.ApiClient(configuration))
payload = swagger_client.Organisation() # Organisation | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.post_organisation_list_dao(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganisationsApi->post_organisation_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_organisation_dao**
> Organisation put_organisation_dao(organisation_id, payload, x_fields=x_fields)



Update an Organisation

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
api_instance = swagger_client.OrganisationsApi(swagger_client.ApiClient(configuration))
organisation_id = 56 # int | Organisation identifier
payload = swagger_client.Organisation() # Organisation | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.put_organisation_dao(organisation_id, payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganisationsApi->put_organisation_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_quota_dao**
> put_quota_dao(organisation_id, payload)



Add or subtract quota for an organisation

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
api_instance = swagger_client.OrganisationsApi(swagger_client.ApiClient(configuration))
organisation_id = 56 # int | Organisation identifier
payload = swagger_client.OrganisationQuota() # OrganisationQuota | 

try:
    api_instance.put_quota_dao(organisation_id, payload)
except ApiException as e:
    print("Exception when calling OrganisationsApi->put_quota_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

