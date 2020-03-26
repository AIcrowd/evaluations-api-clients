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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ArgoApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ArgoApi apiInstance = new ArgoApi();
String modelName = "modelName_example"; // String | 
Integer objectId = 56; // Integer | 
GenericFeedback payload = new GenericFeedback(); // GenericFeedback | 
try {
    apiInstance.postGenericFeedbackContract(modelName, objectId, payload);
} catch (ApiException e) {
    System.err.println("Exception when calling ArgoApi#postGenericFeedbackContract");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelName** | **String**|  |
 **objectId** | **Integer**|  |
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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ArgoApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ArgoApi apiInstance = new ArgoApi();
Integer graderId = 56; // Integer | 
GraderFeedback payload = new GraderFeedback(); // GraderFeedback | 
try {
    apiInstance.postGraderFeedbackDao(graderId, payload);
} catch (ApiException e) {
    System.err.println("Exception when calling ArgoApi#postGraderFeedbackDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Integer**|  |
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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ArgoApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ArgoApi apiInstance = new ArgoApi();
Integer submissionId = 56; // Integer | 
SubmissionFeedback payload = new SubmissionFeedback(); // SubmissionFeedback | 
try {
    apiInstance.postSubmissionFeedbackDao(submissionId, payload);
} catch (ApiException e) {
    System.err.println("Exception when calling ArgoApi#postSubmissionFeedbackDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Integer**|  |
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

