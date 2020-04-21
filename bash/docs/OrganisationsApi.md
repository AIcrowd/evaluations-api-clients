# OrganisationsApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrganisation**](OrganisationsApi.md#createOrganisation) | **POST** /organisations/ | 
[**deleteOrganisation**](OrganisationsApi.md#deleteOrganisation) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisation**](OrganisationsApi.md#getOrganisation) | **GET** /organisations/{organisation_id} | 
[**listOrganisations**](OrganisationsApi.md#listOrganisations) | **GET** /organisations/ | 
[**updateOrganisation**](OrganisationsApi.md#updateOrganisation) | **PUT** /organisations/{organisation_id} | 
[**updateOrganisationQuota**](OrganisationsApi.md#updateOrganisationQuota) | **PUT** /organisations/{organisation_id}/addquota | 


## **createOrganisation**



Create a new organisation

### Example
```bash
aicrowd-evaluations createOrganisation X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deleteOrganisation**



Delete an Organisation

### Example
```bash
aicrowd-evaluations deleteOrganisation organisation_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getOrganisation**



Get details of an organisation

### Example
```bash
aicrowd-evaluations getOrganisation organisation_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **listOrganisations**



List all organisations

### Example
```bash
aicrowd-evaluations listOrganisations X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[Organisation]**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **updateOrganisation**



Update an Organisation

### Example
```bash
aicrowd-evaluations updateOrganisation organisation_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** |  |
 **payload** | [**Organisation**](Organisation.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **updateOrganisationQuota**



Add or subtract quota for an organisation

### Example
```bash
aicrowd-evaluations updateOrganisationQuota organisation_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** |  |
 **payload** | [**OrganisationQuota**](OrganisationQuota.md) |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

