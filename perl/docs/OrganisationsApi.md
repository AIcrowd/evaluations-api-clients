# AIcrowdEvaluations::OrganisationsApi

## Load the API package
```perl
use AIcrowdEvaluations::Object::OrganisationsApi;
```

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_organisation**](OrganisationsApi.md#create_organisation) | **POST** /organisations/ | 
[**delete_organisation**](OrganisationsApi.md#delete_organisation) | **DELETE** /organisations/{organisation_id} | 
[**get_organisation**](OrganisationsApi.md#get_organisation) | **GET** /organisations/{organisation_id} | 
[**list_organisations**](OrganisationsApi.md#list_organisations) | **GET** /organisations/ | 
[**update_organisation**](OrganisationsApi.md#update_organisation) | **PUT** /organisations/{organisation_id} | 
[**update_organisation_quota**](OrganisationsApi.md#update_organisation_quota) | **PUT** /organisations/{organisation_id}/addquota | 


# **create_organisation**
> Organisation create_organisation(payload => $payload, x_fields => $x_fields)



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
    my $result = $api_instance->create_organisation(payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->create_organisation: $@\n";
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

# **delete_organisation**
> delete_organisation(organisation_id => $organisation_id)



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

my $organisation_id = 56; # int | 

eval { 
    $api_instance->delete_organisation(organisation_id => $organisation_id);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->delete_organisation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> Organisation get_organisation(organisation_id => $organisation_id, x_fields => $x_fields)



Get details of an organisation

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

my $organisation_id = 56; # int | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->get_organisation(organisation_id => $organisation_id, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->get_organisation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**|  | 
 **x_fields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_organisations**
> ARRAY[Organisation] list_organisations(x_fields => $x_fields)



List all organisations

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
    my $result = $api_instance->list_organisations(x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->list_organisations: $@\n";
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

# **update_organisation**
> Organisation update_organisation(organisation_id => $organisation_id, payload => $payload, x_fields => $x_fields)



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

my $organisation_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::Organisation->new(); # Organisation | 
my $x_fields = 'x_fields_example'; # string | An optional fields mask

eval { 
    my $result = $api_instance->update_organisation(organisation_id => $organisation_id, payload => $payload, x_fields => $x_fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->update_organisation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**|  | 
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

# **update_organisation_quota**
> update_organisation_quota(organisation_id => $organisation_id, payload => $payload)



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

my $organisation_id = 56; # int | 
my $payload = AIcrowdEvaluations::Object::OrganisationQuota->new(); # OrganisationQuota | 

eval { 
    $api_instance->update_organisation_quota(organisation_id => $organisation_id, payload => $payload);
};
if ($@) {
    warn "Exception when calling OrganisationsApi->update_organisation_quota: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**|  | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

