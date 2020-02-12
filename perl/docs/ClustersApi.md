# WWW::SwaggerClient::ClustersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::ClustersApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_cluster_dao**](ClustersApi.md#delete_cluster_dao) | **DELETE** /clusters/{cluster_id} | 
[**get_cluster_dao**](ClustersApi.md#get_cluster_dao) | **GET** /clusters/{cluster_id} | 
[**get_grader_list_dao**](ClustersApi.md#get_grader_list_dao) | **GET** /clusters/ | 
[**post_grader_list_dao**](ClustersApi.md#post_grader_list_dao) | **POST** /clusters/ | 


# **delete_cluster_dao**
> delete_cluster_dao(cluster_id => $cluster_id)



Delete a cluster

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ClustersApi;
my $api_instance = WWW::SwaggerClient::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $cluster_id = 56; # int | 

eval { 
    $api_instance->delete_cluster_dao(cluster_id => $cluster_id);
};
if ($@) {
    warn "Exception when calling ClustersApi->delete_cluster_dao: $@\n";
}
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
> Cluster get_cluster_dao(cluster_id => $cluster_id, x_fields => $x_fields)



Get information of a cluster

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ClustersApi;
my $api_instance = WWW::SwaggerClient::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $cluster_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_cluster_dao(cluster_id => $cluster_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClustersApi->get_cluster_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cluster_id** | **int**|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_list_dao**
> ARRAY[Cluster] get_grader_list_dao(x_fields => $x_fields)



Get all clusters

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ClustersApi;
my $api_instance = WWW::SwaggerClient::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_grader_list_dao(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClustersApi->get_grader_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[Cluster]**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_list_dao**
> Cluster post_grader_list_dao(payload => $payload, x_fields => $x_fields)



Add a new cluster

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::ClustersApi;
my $api_instance = WWW::SwaggerClient::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = WWW::SwaggerClient::Object::Cluster->new(); # Cluster | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->post_grader_list_dao(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClustersApi->post_grader_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

