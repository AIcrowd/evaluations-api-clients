# AIcrowdEvaluations::ClustersApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::ClustersApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cluster**](ClustersApi.md#create_cluster) | **POST** /clusters/ | 
[**delete_cluster**](ClustersApi.md#delete_cluster) | **DELETE** /clusters/{cluster_id} | 
[**get_cluster**](ClustersApi.md#get_cluster) | **GET** /clusters/{cluster_id} | 
[**list_clusters**](ClustersApi.md#list_clusters) | **GET** /clusters/ | 


# **create_cluster**
> Cluster create_cluster(payload => $payload, x_fields => $x_fields)



Add a new cluster to AIcrowd and install necessary dependencies

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ClustersApi;
my $api_instance = AIcrowdEvaluations::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = AIcrowdEvaluations::Object::Cluster->new(); # Cluster | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->create_cluster(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClustersApi->create_cluster: $@\n";
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

# **delete_cluster**
> delete_cluster(cluster_id => $cluster_id)



Delete a cluster by its ID

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ClustersApi;
my $api_instance = AIcrowdEvaluations::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $cluster_id = 56; # int | 

eval { 
    $api_instance->delete_cluster(cluster_id => $cluster_id);
};
if ($@) {
    warn "Exception when calling ClustersApi->delete_cluster: $@\n";
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

# **get_cluster**
> Cluster get_cluster(cluster_id => $cluster_id, x_fields => $x_fields)



Get details of a cluster by its ID

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ClustersApi;
my $api_instance = AIcrowdEvaluations::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $cluster_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_cluster(cluster_id => $cluster_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClustersApi->get_cluster: $@\n";
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

# **list_clusters**
> ARRAY[Cluster] list_clusters(x_fields => $x_fields)



List all clusters available

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::ClustersApi;
my $api_instance = AIcrowdEvaluations::ClustersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->list_clusters(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ClustersApi->list_clusters: $@\n";
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

