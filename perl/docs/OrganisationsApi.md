# AIcrowdEvaluations::OrganisationsApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::OrganisationsApi;
```

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
> delete_organisation_dao(organisation_id => $organisation_id)



Delete an Organisation

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::OrganisationsApi;
my $api_instance = AIcrowdEvaluations::OrganisationsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $organisation_id = 56; # int | Organisation identifier

eval { 
    $api_instance->delete_organisation_dao(organisation_id => $organisation_id);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->delete_organisation_dao: $@\n";
}
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
> Organisation get_organisation_dao(organisation_id => $organisation_id, x_fields => $x_fields)



Get information of an organisation

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::OrganisationsApi;
my $api_instance = AIcrowdEvaluations::OrganisationsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $organisation_id = 56; # int | Organisation identifier
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_organisation_dao(organisation_id => $organisation_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->get_organisation_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation_list_dao**
> ARRAY[Organisation] get_organisation_list_dao(x_fields => $x_fields)



Get all organisations

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::OrganisationsApi;
my $api_instance = AIcrowdEvaluations::OrganisationsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_organisation_list_dao(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->get_organisation_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**ARRAY[Organisation]**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_organisation_list_dao**
> Organisation post_organisation_list_dao(payload => $payload, x_fields => $x_fields)



Create a new organisation

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::OrganisationsApi;
my $api_instance = AIcrowdEvaluations::OrganisationsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $payload = AIcrowdEvaluations::Object::Organisation->new(); # Organisation | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->post_organisation_list_dao(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->post_organisation_list_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_organisation_dao**
> Organisation put_organisation_dao(organisation_id => $organisation_id, payload => $payload, x_fields => $x_fields)



Update an Organisation

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::OrganisationsApi;
my $api_instance = AIcrowdEvaluations::OrganisationsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $organisation_id = 56; # int | Organisation identifier
my $payload = AIcrowdEvaluations::Object::Organisation->new(); # Organisation | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->put_organisation_dao(organisation_id => $organisation_id, payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->put_organisation_dao: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_quota_dao**
> put_quota_dao(organisation_id => $organisation_id, payload => $payload)



Add or subtract quota for an organisation

### Example 
```perl
use Data::Dumper;
use AIcrowdEvaluations::OrganisationsApi;
my $api_instance = AIcrowdEvaluations::OrganisationsApi->new(

    # Configure API key authorization: api_key
    api_key => {'AUTHORIZATION' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'AUTHORIZATION' => 'Bearer'},
);

my $organisation_id = 56; # int | Organisation identifier
my $payload = AIcrowdEvaluations::Object::OrganisationQuota->new(); # OrganisationQuota | 

eval { 
    $api_instance->put_quota_dao(organisation_id => $organisation_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->put_quota_dao: $@\n";
}
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

