# \OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteOrganisationDao**](OrganisationsApi.md#DeleteOrganisationDao) | **Delete** /organisations/{organisation_id} | 
[**GetOrganisationDao**](OrganisationsApi.md#GetOrganisationDao) | **Get** /organisations/{organisation_id} | 
[**GetOrganisationListDao**](OrganisationsApi.md#GetOrganisationListDao) | **Get** /organisations/ | 
[**PostOrganisationListDao**](OrganisationsApi.md#PostOrganisationListDao) | **Post** /organisations/ | 
[**PutOrganisationDao**](OrganisationsApi.md#PutOrganisationDao) | **Put** /organisations/{organisation_id} | 
[**PutQuotaDao**](OrganisationsApi.md#PutQuotaDao) | **Put** /organisations/addquota/{organisation_id} | 


# **DeleteOrganisationDao**
> DeleteOrganisationDao(ctx, organisationId)


Delete an Organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **organisationId** | **int32**| Organisation identifier | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetOrganisationDao**
> Organisation GetOrganisationDao(ctx, organisationId, optional)


Get information of an organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **organisationId** | **int32**| Organisation identifier | 
 **optional** | ***GetOrganisationDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetOrganisationDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetOrganisationListDao**
> []Organisation GetOrganisationListDao(ctx, optional)


Get all organisations

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetOrganisationListDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetOrganisationListDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**[]Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostOrganisationListDao**
> Organisation PostOrganisationListDao(ctx, payload, optional)


Create a new organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **payload** | [**Organisation**](Organisation.md)|  | 
 **optional** | ***PostOrganisationListDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostOrganisationListDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutOrganisationDao**
> Organisation PutOrganisationDao(ctx, organisationId, payload, optional)


Update an Organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **organisationId** | **int32**| Organisation identifier | 
  **payload** | [**Organisation**](Organisation.md)|  | 
 **optional** | ***PutOrganisationDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PutOrganisationDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutQuotaDao**
> PutQuotaDao(ctx, organisationId, payload)


Add or subtract quota for an organisation

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **organisationId** | **int32**| Organisation identifier | 
  **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

