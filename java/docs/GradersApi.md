# GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGraderDao**](GradersApi.md#deleteGraderDao) | **DELETE** /graders/{grader_id} | 
[**getGraderDao**](GradersApi.md#getGraderDao) | **GET** /graders/{grader_id} | 
[**getGraderListDao**](GradersApi.md#getGraderListDao) | **GET** /graders/ | 
[**postGraderListDao**](GradersApi.md#postGraderListDao) | **POST** /graders/ | 
[**putGraderDao**](GradersApi.md#putGraderDao) | **PUT** /graders/{grader_id} | 


<a name="deleteGraderDao"></a>
# **deleteGraderDao**
> deleteGraderDao(graderId)



Delete a grader

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.GradersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

GradersApi apiInstance = new GradersApi();
Integer graderId = 56; // Integer | 
try {
    apiInstance.deleteGraderDao(graderId);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#deleteGraderDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Integer**|  |

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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.GradersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

GradersApi apiInstance = new GradersApi();
Integer graderId = 56; // Integer | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Grader result = apiInstance.getGraderDao(graderId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#getGraderDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Integer**|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGraderListDao"></a>
# **getGraderListDao**
> List&lt;Grader&gt; getGraderListDao(xFields)



Get all grader

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.GradersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

GradersApi apiInstance = new GradersApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Grader> result = apiInstance.getGraderListDao(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#getGraderListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;Grader&gt;**](Grader.md)

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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.GradersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

GradersApi apiInstance = new GradersApi();
Grader payload = new Grader(); // Grader | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Grader result = apiInstance.postGraderListDao(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#postGraderListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putGraderDao"></a>
# **putGraderDao**
> Grader putGraderDao(graderId, payload, xFields)



Update a grader

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.GradersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

GradersApi apiInstance = new GradersApi();
Integer graderId = 56; // Integer | 
Grader payload = new Grader(); // Grader | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Grader result = apiInstance.putGraderDao(graderId, payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#putGraderDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Integer**|  |
 **payload** | [**Grader**](Grader.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

