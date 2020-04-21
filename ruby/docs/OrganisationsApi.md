# AIcrowdEvaluations::OrganisationsApi

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
> Organisation create_organisation(payload, opts)



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
  result = api_instance.create_organisation(payload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->create_organisation: #{e}"
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



# **delete_organisation**
> delete_organisation(organisation_id)



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

organisation_id = 56 # Integer | 


begin
  api_instance.delete_organisation(organisation_id)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->delete_organisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_organisation**
> Organisation get_organisation(organisation_id, opts)



Get details of an organisation

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

organisation_id = 56 # Integer | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.get_organisation(organisation_id, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->get_organisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_organisations**
> Array&lt;Organisation&gt; list_organisations(opts)



List all organisations

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
  result = api_instance.list_organisations(opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->list_organisations: #{e}"
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



# **update_organisation**
> Organisation update_organisation(organisation_idpayload, opts)



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

organisation_id = 56 # Integer | 

payload = AIcrowdEvaluations::Organisation.new # Organisation | 

opts = { 
  x_fields: 'x_fields_example' # String | An optional fields mask
}

begin
  result = api_instance.update_organisation(organisation_idpayload, opts)
  p result
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->update_organisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**|  | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_organisation_quota**
> update_organisation_quota(organisation_id, payload)



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

organisation_id = 56 # Integer | 

payload = AIcrowdEvaluations::OrganisationQuota.new # OrganisationQuota | 


begin
  api_instance.update_organisation_quota(organisation_id, payload)
rescue AIcrowdEvaluations::ApiError => e
  puts "Exception when calling OrganisationsApi->update_organisation_quota: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **Integer**|  | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



