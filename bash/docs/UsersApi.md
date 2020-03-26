# UsersApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserDao**](UsersApi.md#deleteUserDao) | **DELETE** /users/{user_id} | 
[**getUserDao**](UsersApi.md#getUserDao) | **GET** /users/{user_id} | 
[**getUserListDao**](UsersApi.md#getUserListDao) | **GET** /users/ | 
[**postUserListDao**](UsersApi.md#postUserListDao) | **POST** /users/ | 
[**putQuotaDao**](UsersApi.md#putQuotaDao) | **PUT** /users/addquota/{user_id} | 
[**putUserDao**](UsersApi.md#putUserDao) | **PUT** /users/{user_id} | 


## **deleteUserDao**



Delete a user

### Example
```bash
aicrowd-evaluations deleteUserDao user_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | User identifier |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getUserDao**



Get information of a user

### Example
```bash
aicrowd-evaluations getUserDao user_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | User identifier |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getUserListDao**



Get all user

### Example
```bash
aicrowd-evaluations getUserListDao X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[User]**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postUserListDao**



Create a new user

### Example
```bash
aicrowd-evaluations postUserListDao X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **putQuotaDao**



Add or subtract quota for a user

### Example
```bash
aicrowd-evaluations putQuotaDao user_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | User identifier |
 **payload** | [**UserQuota**](UserQuota.md) |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **putUserDao**



Update a user

### Example
```bash
aicrowd-evaluations putUserDao user_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **integer** | User identifier |
 **payload** | [**User**](User.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

