# AIcrowdEvaluations::ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_cluster_dao**](ClustersApi.md#delete_cluster_dao) | **DELETE** /clusters/{cluster_id} | 
[**get_cluster_dao**](ClustersApi.md#get_cluster_dao) | **GET** /clusters/{cluster_id} | 
[**get_cluster_list_dao**](ClustersApi.md#get_cluster_list_dao) | **GET** /clusters/ | 
[**post_cluster_list_dao**](ClustersApi.md#post_cluster_list_dao) | **POST** /clusters/ | 


# **delete_cluster_dao**
> delete_cluster_dao(cluster_id)



Delete a cluster

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::ClustersApi.new

cluster_id = 56 # Integer | 


begin
  api_instance.delete_cluster_dao(cluster_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling ClustersApi->delete_cluster_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cluster_dao**
> Cluster get_cluster_dao(cluster_id, opts)



Get information of a cluster

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::ClustersApi.new

cluster_id = 56 # Integer | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_cluster_dao(cluster_id, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling ClustersApi->get_cluster_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **Integer**|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cluster_list_dao**
> Array&lt;Cluster&gt; get_cluster_list_dao(opts)



Get all clusters

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::ClustersApi.new

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_cluster_list_dao(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling ClustersApi->get_cluster_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;Cluster&gt;**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_cluster_list_dao**
> Cluster post_cluster_list_dao(payload, opts)



Add a new cluster

### Example
```ruby
# load the gem
require 'aicrowd_evaluations'
# setup authorization
AIcrowdEvaluations.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['AUTHORIZATION'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['AUTHORIZATION'] = 'Bearer'
end

api_instance = AIcrowdEvaluations::ClustersApi.new

payload = AIcrowdEvaluations::Cluster.new # Cluster | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.post_cluster_list_dao(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling ClustersApi->post_cluster_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



