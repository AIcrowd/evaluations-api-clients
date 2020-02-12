# AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logout a user**](AuthApi.md#logout a user) | **POST** /auth/logout | 
[**user login**](AuthApi.md#user login) | **POST** /auth/login | 


<a name="logout a user"></a>
# **logout a user**
> logout a user()



### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = AuthApi()
try {
    apiInstance.logout a user()
} catch (e: ClientException) {
    println("4xx response calling AuthApi#logout a user")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AuthApi#logout a user")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="user login"></a>
# **user login**
> user login(payload)



### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = AuthApi()
val payload : Login =  // Login | 
try {
    apiInstance.user login(payload)
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

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

