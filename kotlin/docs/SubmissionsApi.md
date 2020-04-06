# SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubmission**](SubmissionsApi.md#createSubmission) | **POST** /submissions/ | 
[**deleteSubmission**](SubmissionsApi.md#deleteSubmission) | **DELETE** /submissions/{submission_id} | 
[**getSubmission**](SubmissionsApi.md#getSubmission) | **GET** /submissions/{submission_id} | 
[**getSubmissionData**](SubmissionsApi.md#getSubmissionData) | **GET** /submissions/{submission_id}/data | 
[**listSubmissions**](SubmissionsApi.md#listSubmissions) | **GET** /submissions/ | 


<a name="createSubmission"></a>
# **createSubmission**
> Submissions createSubmission(payload, xFields)



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
    val result : Submissions = apiInstance.createSubmission(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#createSubmission")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#createSubmission")
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

<a name="deleteSubmission"></a>
# **deleteSubmission**
> deleteSubmission(submissionId)



Stop evaluation of a submission and delete it

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteSubmission(submissionId)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#deleteSubmission")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#deleteSubmission")
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

<a name="getSubmission"></a>
# **getSubmission**
> Submissions getSubmission(submissionId, xFields)



Get details of a submission by its ID

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Submissions = apiInstance.getSubmission(submissionId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#getSubmission")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#getSubmission")
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

<a name="getSubmissionData"></a>
# **getSubmissionData**
> getSubmissionData(submissionId)



Get the submission data by submission ID

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.getSubmissionData(submissionId)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#getSubmissionData")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#getSubmissionData")
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

<a name="listSubmissions"></a>
# **listSubmissions**
> kotlin.Array&lt;Submissions&gt; listSubmissions(xFields)



List all submissions available

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Submissions> = apiInstance.listSubmissions(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#listSubmissions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#listSubmissions")
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

