# SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubmission**](SubmissionsApi.md#createSubmission) | **POST** /submissions/ | 
[**deleteSubmission**](SubmissionsApi.md#deleteSubmission) | **DELETE** /submissions/{submission_id} | 
[**downloadSubmissionLogs**](SubmissionsApi.md#downloadSubmissionLogs) | **GET** /submissions/{submission_id}/logs/download | 
[**getSubmission**](SubmissionsApi.md#getSubmission) | **GET** /submissions/{submission_id} | 
[**getSubmissionData**](SubmissionsApi.md#getSubmissionData) | **GET** /submissions/{submission_id}/data | 
[**getSubmissionLogs**](SubmissionsApi.md#getSubmissionLogs) | **GET** /submissions/{submission_id}/logs | 
[**listSubmissions**](SubmissionsApi.md#listSubmissions) | **GET** /submissions/ | 
[**retrySubmissions**](SubmissionsApi.md#retrySubmissions) | **POST** /submissions/retry | 


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

<a name="downloadSubmissionLogs"></a>
# **downloadSubmissionLogs**
> downloadSubmissionLogs(submissionId)



Get the submission logs by submission ID

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.downloadSubmissionLogs(submissionId)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#downloadSubmissionLogs")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#downloadSubmissionLogs")
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

<a name="getSubmissionLogs"></a>
# **getSubmissionLogs**
> SubmissionLogs getSubmissionLogs(submissionId, step, logLines, xFields)



Get submission logs from loki

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
val step : kotlin.Int = 56 // kotlin.Int | Granularity of logs
val logLines : kotlin.Int = 56 // kotlin.Int | Number of lines to fetch
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : SubmissionLogs = apiInstance.getSubmissionLogs(submissionId, step, logLines, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#getSubmissionLogs")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#getSubmissionLogs")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **kotlin.Int**|  |
 **step** | **kotlin.Int**| Granularity of logs | [optional]
 **logLines** | **kotlin.Int**| Number of lines to fetch | [optional]
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**SubmissionLogs**](SubmissionLogs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listSubmissions"></a>
# **listSubmissions**
> kotlin.Array&lt;Submissions&gt; listSubmissions(perPage, page, meta, status, graderId, userId, xFields)



List all submissions available

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val perPage : kotlin.String = perPage_example // kotlin.String | Results to display per page
val page : kotlin.String = page_example // kotlin.String | Page number
val meta : kotlin.String = meta_example // kotlin.String | Fetch submissions containing this meta value
val status : kotlin.String = status_example // kotlin.String | Fetch submissions with this status
val graderId : kotlin.Int = 56 // kotlin.Int | Fetch submissions for a grader
val userId : kotlin.Int = 56 // kotlin.Int | Fetch submissions created by the user
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Submissions> = apiInstance.listSubmissions(perPage, page, meta, status, graderId, userId, xFields)
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
 **perPage** | **kotlin.String**| Results to display per page | [optional]
 **page** | **kotlin.String**| Page number | [optional]
 **meta** | **kotlin.String**| Fetch submissions containing this meta value | [optional]
 **status** | **kotlin.String**| Fetch submissions with this status | [optional]
 **graderId** | **kotlin.Int**| Fetch submissions for a grader | [optional]
 **userId** | **kotlin.Int**| Fetch submissions created by the user | [optional]
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;Submissions&gt;**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="retrySubmissions"></a>
# **retrySubmissions**
> SubmissionRetry retrySubmissions(payload, xFields)



Retry the submissions with given IDs

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = SubmissionsApi()
val payload : SubmissionRetryInput =  // SubmissionRetryInput | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : SubmissionRetry = apiInstance.retrySubmissions(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SubmissionsApi#retrySubmissions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SubmissionsApi#retrySubmissions")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

