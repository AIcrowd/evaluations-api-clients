# SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSubmissionDao**](SubmissionsApi.md#deleteSubmissionDao) | **DELETE** /submissions/{submission_id} | 
[**getSubmissionDao**](SubmissionsApi.md#getSubmissionDao) | **GET** /submissions/{submission_id} | 
[**getSubmissionDataDao**](SubmissionsApi.md#getSubmissionDataDao) | **GET** /submissions/{submission_id}/data | 
[**getSubmissionListDao**](SubmissionsApi.md#getSubmissionListDao) | **GET** /submissions/ | 
[**postSubmissionListDao**](SubmissionsApi.md#postSubmissionListDao) | **POST** /submissions/ | 


<a name="deleteSubmissionDao"></a>
# **deleteSubmissionDao**
> deleteSubmissionDao(submissionId)



Stop evaluation of a submission

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteSubmissionDao(submissionId)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#deleteSubmissionDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#deleteSubmissionDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **kotlin.Int**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionDao"></a>
# **getSubmissionDao**
> Submissions getSubmissionDao(submissionId, xFields)



Get details of a submission

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Submissions = apiInstance.getSubmissionDao(submissionId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#getSubmissionDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#getSubmissionDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **kotlin.Int**|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionDataDao"></a>
# **getSubmissionDataDao**
> getSubmissionDataDao(submissionId)



Get the submission data

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.getSubmissionDataDao(submissionId)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#getSubmissionDataDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#getSubmissionDataDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **kotlin.Int**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionListDao"></a>
# **getSubmissionListDao**
> kotlin.Array&lt;Submissions&gt; getSubmissionListDao(xFields)



Get all submissions

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Submissions> = apiInstance.getSubmissionListDao(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#getSubmissionListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#getSubmissionListDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;Submissions&gt;**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSubmissionListDao"></a>
# **postSubmissionListDao**
> Submissions postSubmissionListDao(payload, xFields)



Make a new submission

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val payload : Submissions =  // Submissions | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Submissions = apiInstance.postSubmissionListDao(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#postSubmissionListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#postSubmissionListDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

