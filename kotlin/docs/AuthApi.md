# AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logout a user**](AuthApi.md#logout a user) | **POST** /auth/logout | 
[**user login**](AuthApi.md#user login) | **POST** /auth/login | 


<a name="logout a user"></a>
# **logout a user**
> AuthLogout logout a user(xFields)



### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = AuthApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : AuthLogout = apiInstance.logout a user(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AuthApi#logout a user")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#logout a user")
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

<a name="user login"></a>
# **user login**
> AuthResponse user login(payload, xFields)



### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = AuthApi()
val payload : Login =  // Login | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : AuthResponse = apiInstance.user login(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AuthApi#user login")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#user login")
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

