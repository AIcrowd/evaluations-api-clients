# AIcrowdEvaluations::OrganisationsApi

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

api_instance = AIcrowdEvaluations::OrganisationsApi.new

organisation_id = 56 # Integer | Organisation identifier


begin
  api_instance.delete_organisation_dao(organisation_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->delete_organisation_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**| Organisation identifier | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organisation_dao**
> Organisation get_organisation_dao(organisation_id, opts)



Get information of an organisation

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

api_instance = AIcrowdEvaluations::OrganisationsApi.new

organisation_id = 56 # Integer | Organisation identifier

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_organisation_dao(organisation_id, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->get_organisation_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**| Organisation identifier | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organisation_list_dao**
> Array&lt;Organisation&gt; get_organisation_list_dao(opts)



Get all organisations

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

api_instance = AIcrowdEvaluations::OrganisationsApi.new

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_organisation_list_dao(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->get_organisation_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Array&lt;Organisation&gt;**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_organisation_list_dao**
> Organisation post_organisation_list_dao(payload, opts)



Create a new organisation

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

api_instance = AIcrowdEvaluations::OrganisationsApi.new

payload = AIcrowdEvaluations::Organisation.new # Organisation | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.post_organisation_list_dao(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->post_organisation_list_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_organisation_dao**
> Organisation put_organisation_dao(organisation_idpayload, opts)



Update an Organisation

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

api_instance = AIcrowdEvaluations::OrganisationsApi.new

organisation_id = 56 # Integer | Organisation identifier

payload = AIcrowdEvaluations::Organisation.new # Organisation | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.put_organisation_dao(organisation_idpayload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->put_organisation_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**| Organisation identifier | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_quota_dao**
> put_quota_dao(organisation_id, payload)



Add or subtract quota for an organisation

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

api_instance = AIcrowdEvaluations::OrganisationsApi.new

organisation_id = 56 # Integer | Organisation identifier

payload = AIcrowdEvaluations::OrganisationQuota.new # OrganisationQuota | 


begin
  api_instance.put_quota_dao(organisation_id, payload)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->put_quota_dao: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**| Organisation identifier | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



