# AuthApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogoutApi**](AuthApi.md#postLogoutApi) | **POST** /auth/logout | 
[**postUserLogin**](AuthApi.md#postUserLogin) | **POST** /auth/login | 


## **postLogoutApi**



Logout a user

### Example
```bash
aicrowd-evaluations postLogoutApi X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**AuthLogout**](AuthLogout.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postUserLogin**



User login

### Example
```bash
aicrowd-evaluations postUserLogin X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

