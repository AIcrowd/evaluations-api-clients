# UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserDao**](UsersApi.md#deleteUserDao) | **DELETE** /users/{user_id} | 
[**getUserDao**](UsersApi.md#getUserDao) | **GET** /users/{user_id} | 
[**getUserListDao**](UsersApi.md#getUserListDao) | **GET** /users/ | 
[**postUserListDao**](UsersApi.md#postUserListDao) | **POST** /users/ | 
[**putQuotaDao**](UsersApi.md#putQuotaDao) | **PUT** /users/addquota/{user_id} | 
[**putUserDao**](UsersApi.md#putUserDao) | **PUT** /users/{user_id} | 


<a name="deleteUserDao"></a>
# **deleteUserDao**
> deleteUserDao(userId)



Delete a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | User identifier
try {
    apiInstance.deleteUserDao(userId)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#deleteUserDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#deleteUserDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**| User identifier |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserDao"></a>
# **getUserDao**
> User getUserDao(userId, xFields)



Get information of a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | User identifier
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : User = apiInstance.getUserDao(userId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUserDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUserDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**| User identifier |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserListDao"></a>
# **getUserListDao**
> kotlin.Array&lt;User&gt; getUserListDao(xFields)



Get all user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<User> = apiInstance.getUserListDao(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#getUserListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#getUserListDao")
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

<a name="postUserListDao"></a>
# **postUserListDao**
> User postUserListDao(payload, xFields)



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
    val result : User = apiInstance.postUserListDao(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#postUserListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#postUserListDao")
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

<a name="putQuotaDao"></a>
# **putQuotaDao**
> putQuotaDao(userId, payload)



Add or subtract quota for a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | User identifier
val payload : UserQuota =  // UserQuota | 
try {
    apiInstance.putQuotaDao(userId, payload)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#putQuotaDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#putQuotaDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**| User identifier |
 **payload** | [**UserQuota**](UserQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putUserDao"></a>
# **putUserDao**
> User putUserDao(userId, payload, xFields)



Update a user

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = UsersApi()
val userId : kotlin.Int = 56 // kotlin.Int | User identifier
val payload : User =  // User | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : User = apiInstance.putUserDao(userId, payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UsersApi#putUserDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UsersApi#putUserDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**| User identifier |
 **payload** | [**User**](User.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

