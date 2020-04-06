# GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGraderDao**](GradersApi.md#deleteGraderDao) | **DELETE** /graders/{grader_id} | 
[**getGraderDao**](GradersApi.md#getGraderDao) | **GET** /graders/{grader_id} | 
[**getGraderListDao**](GradersApi.md#getGraderListDao) | **GET** /graders/ | 
[**postGraderListDao**](GradersApi.md#postGraderListDao) | **POST** /graders/ | 


<a name="deleteGraderDao"></a>
# **deleteGraderDao**
> deleteGraderDao(graderId)



Delete a grader

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteGraderDao(graderId)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#deleteGraderDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#deleteGraderDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **kotlin.Int**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGraderDao"></a>
# **getGraderDao**
> Grader getGraderDao(graderId, xFields)



Get information of a grader

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Grader = apiInstance.getGraderDao(graderId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#getGraderDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#getGraderDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **kotlin.Int**|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGraderListDao"></a>
# **getGraderListDao**
> kotlin.Array&lt;Grader&gt; getGraderListDao(xFields)



Get all grader

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Grader> = apiInstance.getGraderListDao(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#getGraderListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#getGraderListDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;Grader&gt;**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postGraderListDao"></a>
# **postGraderListDao**
> Grader postGraderListDao(payload, xFields)



Create a new grader

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val payload : Grader =  // Grader | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Grader = apiInstance.postGraderListDao(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#postGraderListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#postGraderListDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

