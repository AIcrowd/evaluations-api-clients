# OrganisationsApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOrganisationDao**](OrganisationsApi.md#deleteOrganisationDao) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisationDao**](OrganisationsApi.md#getOrganisationDao) | **GET** /organisations/{organisation_id} | 
[**getOrganisationListDao**](OrganisationsApi.md#getOrganisationListDao) | **GET** /organisations/ | 
[**postOrganisationListDao**](OrganisationsApi.md#postOrganisationListDao) | **POST** /organisations/ | 
[**putOrganisationDao**](OrganisationsApi.md#putOrganisationDao) | **PUT** /organisations/{organisation_id} | 
[**putQuotaDao**](OrganisationsApi.md#putQuotaDao) | **PUT** /organisations/addquota/{organisation_id} | 


## **deleteOrganisationDao**



Delete an Organisation

### Example
```bash
aicrowd-evaluations deleteOrganisationDao organisation_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** | Organisation identifier |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getOrganisationDao**



Get information of an organisation

### Example
```bash
aicrowd-evaluations getOrganisationDao organisation_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** | Organisation identifier |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getOrganisationListDao**



Get all organisations

### Example
```bash
aicrowd-evaluations getOrganisationListDao X-Fields:value
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

## **postOrganisationListDao**



Create a new organisation

### Example
```bash
aicrowd-evaluations postOrganisationListDao X-Fields:value
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

## **putOrganisationDao**



Update an Organisation

### Example
```bash
aicrowd-evaluations putOrganisationDao organisation_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** | Organisation identifier |
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

## **putQuotaDao**



Add or subtract quota for an organisation

### Example
```bash
aicrowd-evaluations putQuotaDao organisation_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **integer** | Organisation identifier |
 **payload** | [**OrganisationQuota**](OrganisationQuota.md) |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

