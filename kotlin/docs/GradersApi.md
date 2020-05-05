# GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGrader**](GradersApi.md#createGrader) | **POST** /graders/ | 
[**deleteGrader**](GradersApi.md#deleteGrader) | **DELETE** /graders/{grader_id} | 
[**getGrader**](GradersApi.md#getGrader) | **GET** /graders/{grader_id} | 
[**getGraderLogs**](GradersApi.md#getGraderLogs) | **GET** /graders/{grader_id}/logs | 
[**listGraders**](GradersApi.md#listGraders) | **GET** /graders/ | 
[**updateGrader**](GradersApi.md#updateGrader) | **PATCH** /graders/{grader_id} | 


<a name="createGrader"></a>
# **createGrader**
> Grader createGrader(payload, xFields)



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
    val result : Grader = apiInstance.createGrader(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#createGrader")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#createGrader")
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

<a name="deleteGrader"></a>
# **deleteGrader**
> deleteGrader(graderId)



Delete a grader by its ID

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteGrader(graderId)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#deleteGrader")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#deleteGrader")
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

<a name="getGrader"></a>
# **getGrader**
> Grader getGrader(graderId, xFields)



Get details of a grader by its ID

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Grader = apiInstance.getGrader(graderId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#getGrader")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#getGrader")
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

<a name="getGraderLogs"></a>
# **getGraderLogs**
> getGraderLogs(graderId)



Get the grader logs by submission ID

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.getGraderLogs(graderId)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#getGraderLogs")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#getGraderLogs")
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

<a name="listGraders"></a>
# **listGraders**
> kotlin.Array&lt;Grader&gt; listGraders(meta, name, status, userId, xFields)



List all graders available

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val meta : kotlin.String = meta_example // kotlin.String | Fetch graders containing this meta value
val name : kotlin.String = name_example // kotlin.String | Fetch grader containing name
val status : kotlin.String = status_example // kotlin.String | Fetch graders with this status
val userId : kotlin.Int = 56 // kotlin.Int | Fetch graders created by the user
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Grader> = apiInstance.listGraders(meta, name, status, userId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#listGraders")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#listGraders")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **kotlin.String**| Fetch graders containing this meta value | [optional]
 **name** | **kotlin.String**| Fetch grader containing name | [optional]
 **status** | **kotlin.String**| Fetch graders with this status | [optional]
 **userId** | **kotlin.Int**| Fetch graders created by the user | [optional]
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;Grader&gt;**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateGrader"></a>
# **updateGrader**
> Grader updateGrader(graderId, payload, xFields)



Update meta details of a grader by its ID. Warning: There is no data validation.

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = GradersApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
val payload : GraderMeta =  // GraderMeta | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Grader = apiInstance.updateGrader(graderId, payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GradersApi#updateGrader")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GradersApi#updateGrader")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **kotlin.Int**|  |
 **payload** | [**GraderMeta**](GraderMeta.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

