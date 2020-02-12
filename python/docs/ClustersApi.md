# swagger_client.ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_cluster_dao**](ClustersApi.md#delete_cluster_dao) | **DELETE** /clusters/{cluster_id} | 
[**get_cluster_dao**](ClustersApi.md#get_cluster_dao) | **GET** /clusters/{cluster_id} | 
[**get_grader_list_dao**](ClustersApi.md#get_grader_list_dao) | **GET** /clusters/ | 
[**post_grader_list_dao**](ClustersApi.md#post_grader_list_dao) | **POST** /clusters/ | 


# **delete_cluster_dao**
> delete_cluster_dao(cluster_id)



Delete a cluster

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
api_instance = swagger_client.ClustersApi(swagger_client.ApiClient(configuration))
cluster_id = 56 # int | 

try:
    api_instance.delete_cluster_dao(cluster_id)
except ApiException as e:
    print("Exception when calling ClustersApi->delete_cluster_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cluster_dao**
> Cluster get_cluster_dao(cluster_id, x_fields=x_fields)



Get information of a cluster

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
api_instance = swagger_client.ClustersApi(swagger_client.ApiClient(configuration))
cluster_id = 56 # int | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_cluster_dao(cluster_id, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClustersApi->get_cluster_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **int**|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_list_dao**
> list[Cluster] get_grader_list_dao(x_fields=x_fields)



Get all clusters

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
api_instance = swagger_client.ClustersApi(swagger_client.ApiClient(configuration))
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.get_grader_list_dao(x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClustersApi->get_grader_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**list[Cluster]**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_list_dao**
> Cluster post_grader_list_dao(payload, x_fields=x_fields)



Add a new cluster

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
api_instance = swagger_client.ClustersApi(swagger_client.ApiClient(configuration))
payload = swagger_client.Cluster() # Cluster | 
x_fields = 'x_fields_example' # str | An optional fields mask (optional)

try:
    api_response = api_instance.post_grader_list_dao(payload, x_fields=x_fields)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ClustersApi->post_grader_list_dao: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md)|  | 
 **x_fields** | **str**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

