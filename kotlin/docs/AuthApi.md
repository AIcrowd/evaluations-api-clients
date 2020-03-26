# AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogoutApi**](AuthApi.md#postLogoutApi) | **POST** /auth/logout | 
[**postUserLogin**](AuthApi.md#postUserLogin) | **POST** /auth/login | 


<a name="postLogoutApi"></a>
# **postLogoutApi**
> AuthLogout postLogoutApi(xFields)



Logout a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = AuthApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : AuthLogout = apiInstance.postLogoutApi(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AuthApi#postLogoutApi")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#postLogoutApi")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**AuthLogout**](AuthLogout.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postUserLogin"></a>
# **postUserLogin**
> AuthResponse postUserLogin(payload, xFields)



User login

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = AuthApi()
val payload : Login =  // Login | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : AuthResponse = apiInstance.postUserLogin(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AuthApi#postUserLogin")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#postUserLogin")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

