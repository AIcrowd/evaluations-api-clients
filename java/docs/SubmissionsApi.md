# SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubmission**](SubmissionsApi.md#createSubmission) | **POST** /submissions/ | 
[**deleteSubmission**](SubmissionsApi.md#deleteSubmission) | **DELETE** /submissions/{submission_id} | 
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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
Submissions payload = new Submissions(); // Submissions | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Submissions result = apiInstance.createSubmission(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#createSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
Integer submissionId = 56; // Integer | 
try {
    apiInstance.deleteSubmission(submissionId);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#deleteSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Integer**|  |

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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
Integer submissionId = 56; // Integer | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Submissions result = apiInstance.getSubmission(submissionId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#getSubmission");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Integer**|  |
 **xFields** | **String**| An optional fields mask | [optional]

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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
Integer submissionId = 56; // Integer | 
try {
    apiInstance.getSubmissionData(submissionId);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#getSubmissionData");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Integer**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionLogs"></a>
# **getSubmissionLogs**
> getSubmissionLogs(submissionId)



Get the submission logs by submission ID

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
Integer submissionId = 56; // Integer | 
try {
    apiInstance.getSubmissionLogs(submissionId);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#getSubmissionLogs");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Integer**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listSubmissions"></a>
# **listSubmissions**
> List&lt;Submissions&gt; listSubmissions(perPage, page, meta, status, graderId, userId, xFields)



List all submissions available

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
String perPage = "perPage_example"; // String | Results to display per page
String page = "page_example"; // String | Page number
String meta = "meta_example"; // String | Fetch submissions containing this meta value
String status = "status_example"; // String | Fetch submissions with this status
Integer graderId = 56; // Integer | Fetch submissions for a grader
Integer userId = 56; // Integer | Fetch submissions created by the user
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Submissions> result = apiInstance.listSubmissions(perPage, page, meta, status, graderId, userId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#listSubmissions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **String**| Results to display per page | [optional]
 **page** | **String**| Page number | [optional]
 **meta** | **String**| Fetch submissions containing this meta value | [optional]
 **status** | **String**| Fetch submissions with this status | [optional]
 **graderId** | **Integer**| Fetch submissions for a grader | [optional]
 **userId** | **Integer**| Fetch submissions created by the user | [optional]
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;Submissions&gt;**](Submissions.md)

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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
SubmissionRetryInput payload = new SubmissionRetryInput(); // SubmissionRetryInput | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    SubmissionRetry result = apiInstance.retrySubmissions(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#retrySubmissions");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

