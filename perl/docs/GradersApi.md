# WWW::SwaggerClient::GradersApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::GradersApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_grader_dao**](GradersApi.md#delete_grader_dao) | **DELETE** /graders/{grader_id} | 
[**get_grader_dao**](GradersApi.md#get_grader_dao) | **GET** /graders/{grader_id} | 
[**get_grader_list_dao**](GradersApi.md#get_grader_list_dao) | **GET** /graders/ | 
[**post_grader_list_dao**](GradersApi.md#post_grader_list_dao) | **POST** /graders/ | 
[**put_grader_dao**](GradersApi.md#put_grader_dao) | **PUT** /graders/{grader_id} | 


# **delete_grader_dao**
> delete_grader_dao(grader_id => $grader_id)



Delete a grader

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::GradersApi;
my $api_instance = WWW::SwaggerClient::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 

eval { 
    $api_instance->delete_grader_dao(grader_id => $grader_id);
};
if ($@) {
    warn "Exception when calling GradersApi->delete_grader_dao: $@\n";
}
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

# **get_grader_dao**
> Grader get_grader_dao(grader_id => $grader_id, x_fields => $x_fields)



Get information of a grader

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::GradersApi;
my $api_instance = WWW::SwaggerClient::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_grader_dao(grader_id => $grader_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->get_grader_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_grader_list_dao**
> ARRAY[Grader] get_grader_list_dao(x_fields => $x_fields)



Get all grader

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::GradersApi;
my $api_instance = WWW::SwaggerClient::GradersApi->new(

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
    warn "Exception when calling GradersApi->get_grader_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_grader_list_dao**
> Grader post_grader_list_dao(payload => $payload, x_fields => $x_fields)



Create a new grader

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::GradersApi;
my $api_instance = WWW::SwaggerClient::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = WWW::SwaggerClient::Object::Grader->new(); # Grader | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->post_grader_list_dao(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->post_grader_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_grader_dao**
> Grader put_grader_dao(grader_id => $grader_id, payload => $payload, x_fields => $x_fields)



Update a grader

### Example 
```perl
use Data::Dumper;
use WWW::SwaggerClient::GradersApi;
my $api_instance = WWW::SwaggerClient::GradersApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $grader_id = 56; # int | 
my $payload = WWW::SwaggerClient::Object::Grader->new(); # Grader | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->put_grader_dao(grader_id => $grader_id, payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GradersApi->put_grader_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  | 
 **payload** | [**Grader**](Grader.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

