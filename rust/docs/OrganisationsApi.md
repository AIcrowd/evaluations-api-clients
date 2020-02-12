# \OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_organisation_dao**](OrganisationsApi.md#delete_organisation_dao) | **Delete** /organisations/{organisation_id} | 
[**get_organisation_dao**](OrganisationsApi.md#get_organisation_dao) | **Get** /organisations/{organisation_id} | 
[**get_organisation_list_dao**](OrganisationsApi.md#get_organisation_list_dao) | **Get** /organisations/ | 
[**post_organisation_list_dao**](OrganisationsApi.md#post_organisation_list_dao) | **Post** /organisations/ | 
[**put_organisation_dao**](OrganisationsApi.md#put_organisation_dao) | **Put** /organisations/{organisation_id} | 
[**put_quota_dao**](OrganisationsApi.md#put_quota_dao) | **Put** /organisations/addquota/{organisation_id} | 


# **delete_organisation_dao**
> delete_organisation_dao(ctx, organisation_id)


Delete an Organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organisation_id** | **i32**| Organisation identifier | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation_dao**
> ::models::Organisation get_organisation_dao(ctx, organisation_id, optional)


Get information of an organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organisation_id** | **i32**| Organisation identifier | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **i32**| Organisation identifier | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation_list_dao**
> Vec<::models::Organisation> get_organisation_list_dao(ctx, optional)


Get all organisations

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**Vec<::models::Organisation>**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_organisation_list_dao**
> ::models::Organisation post_organisation_list_dao(ctx, payload, optional)


Create a new organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **payload** | [**Organisation**](Organisation.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_organisation_dao**
> ::models::Organisation put_organisation_dao(ctx, organisation_id, payload, optional)


Update an Organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organisation_id** | **i32**| Organisation identifier | 
  **payload** | [**Organisation**](Organisation.md)|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **i32**| Organisation identifier | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **x_fields** | **String**| An optional fields mask | 

### Return type

[**::models::Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_quota_dao**
> put_quota_dao(ctx, organisation_id, payload)


Add or subtract quota for an organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organisation_id** | **i32**| Organisation identifier | 
  **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

