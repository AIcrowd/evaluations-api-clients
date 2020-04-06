# UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersApi.md#createUser) | **POST** /users/ | 
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /users/{user_id} | 
[**getUser**](UsersApi.md#getUser) | **GET** /users/{user_id} | 
[**listUsers**](UsersApi.md#listUsers) | **GET** /users/ | 
[**updateUser**](UsersApi.md#updateUser) | **PUT** /users/{user_id} | 
[**updateUserQuota**](UsersApi.md#updateUserQuota) | **PUT** /users/{user_id}/addquota | 


<a name="createUser"></a>
# **createUser**
> User createUser(payload, xFields)



Create a new user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val payload : User =  // User | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : User = apiInstance.createUser(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#createUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#createUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteUser"></a>
# **deleteUser**
> deleteUser(userId)



Delete a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteUser(userId)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#deleteUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#deleteUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> User getUser(userId, xFields)



Get information of a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : User = apiInstance.getUser(userId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listUsers"></a>
# **listUsers**
> kotlin.Array&lt;User&gt; listUsers(xFields)



Get all user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<User> = apiInstance.listUsers(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#listUsers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#listUsers")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;User&gt;**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateUser"></a>
# **updateUser**
> User updateUser(userId, payload, xFields)



Update a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | 
val payload : User =  // User | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : User = apiInstance.updateUser(userId, payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#updateUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#updateUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**|  |
 **payload** | [**User**](User.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateUserQuota"></a>
# **updateUserQuota**
> updateUserQuota(userId, payload)



Add or subtract quota for a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | 
val payload : UserQuota =  // UserQuota | 
try {
    apiInstance.updateUserQuota(userId, payload)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#updateUserQuota")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#updateUserQuota")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**|  |
 **payload** | [**UserQuota**](UserQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

