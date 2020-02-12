# SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSubmissionDao**](SubmissionsApi.md#deleteSubmissionDao) | **DELETE** /submissions/{submission_id} | 
[**getSubmissionDao**](SubmissionsApi.md#getSubmissionDao) | **GET** /submissions/{submission_id} | 
[**getSubmissionListDao**](SubmissionsApi.md#getSubmissionListDao) | **GET** /submissions/ | 
[**postSubmissionListDao**](SubmissionsApi.md#postSubmissionListDao) | **POST** /submissions/ | 


<a name="deleteSubmissionDao"></a>
# **deleteSubmissionDao**
> deleteSubmissionDao(submissionId)



Stop evaluation of a submission

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
Integer submissionId = 56; // Integer | 
try {
    apiInstance.deleteSubmissionDao(submissionId);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#deleteSubmissionDao");
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

<a name="getSubmissionDao"></a>
# **getSubmissionDao**
> Submissions getSubmissionDao(submissionId, xFields)



Get details of a submission

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SubmissionsApi;

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
    Submissions result = apiInstance.getSubmissionDao(submissionId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#getSubmissionDao");
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

<a name="getSubmissionListDao"></a>
# **getSubmissionListDao**
> List&lt;Submissions&gt; getSubmissionListDao(xFields)



Get all submissions

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SubmissionsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

SubmissionsApi apiInstance = new SubmissionsApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Submissions> result = apiInstance.getSubmissionListDao(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#getSubmissionListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;Submissions&gt;**](Submissions.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SubmissionsApi;

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
    Submissions result = apiInstance.postSubmissionListDao(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SubmissionsApi#postSubmissionListDao");
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

