# ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postGenericFeedbackContract**](ArgoApi.md#postGenericFeedbackContract) | **POST** /argo/{model_name}/{object_id} | 
[**postGraderFeedbackDao**](ArgoApi.md#postGraderFeedbackDao) | **POST** /argo/graders/{grader_id} | 
[**postSubmissionFeedbackDao**](ArgoApi.md#postSubmissionFeedbackDao) | **POST** /argo/submissions/{submission_id} | 


<a name="postGenericFeedbackContract"></a>
# **postGenericFeedbackContract**
> postGenericFeedbackContract(modelName, objectId, payload)



Update the status of an object

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ArgoApi()
val modelName : kotlin.String = modelName_example // kotlin.String | 
val objectId : kotlin.Int = 56 // kotlin.Int | 
val payload : GenericFeedback =  // GenericFeedback | 
try {
    apiInstance.postGenericFeedbackContract(modelName, objectId, payload)
} catch (e: ClientException) {
    println("4xx response calling ArgoApi#postGenericFeedbackContract")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArgoApi#postGenericFeedbackContract")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelName** | **kotlin.String**|  |
 **objectId** | **kotlin.Int**|  |
 **payload** | [**GenericFeedback**](GenericFeedback.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postGraderFeedbackDao"></a>
# **postGraderFeedbackDao**
> postGraderFeedbackDao(graderId, payload)



Update the grader details

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ArgoApi()
val graderId : kotlin.Int = 56 // kotlin.Int | 
val payload : GraderFeedback =  // GraderFeedback | 
try {
    apiInstance.postGraderFeedbackDao(graderId, payload)
} catch (e: ClientException) {
    println("4xx response calling ArgoApi#postGraderFeedbackDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArgoApi#postGraderFeedbackDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **kotlin.Int**|  |
 **payload** | [**GraderFeedback**](GraderFeedback.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSubmissionFeedbackDao"></a>
# **postSubmissionFeedbackDao**
> postSubmissionFeedbackDao(submissionId, payload)



Update the submission details

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ArgoApi()
val submissionId : kotlin.Int = 56 // kotlin.Int | 
val payload : SubmissionFeedback =  // SubmissionFeedback | 
try {
    apiInstance.postSubmissionFeedbackDao(submissionId, payload)
} catch (e: ClientException) {
    println("4xx response calling ArgoApi#postSubmissionFeedbackDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArgoApi#postSubmissionFeedbackDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **kotlin.Int**|  |
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

