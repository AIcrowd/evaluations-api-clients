# AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthApi.md#login) | **POST** /auth/login | 
[**logout**](AuthApi.md#logout) | **POST** /auth/logout | 


<a name="login"></a>
# **login**
> AuthResponse login(payload, xFields)



Log in a user with email and password.

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = AuthApi()
val payload : Login =  // Login | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : AuthResponse = apiInstance.login(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AuthApi#login")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#login")
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

<a name="logout"></a>
# **logout**
> AuthLogout logout(xFields)



Invalidate the current authorization token.

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = AuthApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : AuthLogout = apiInstance.logout(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AuthApi#logout")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#logout")
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

