# GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archiveGrader**](GradersApi.md#archiveGrader) | **POST** /graders/{grader_id}/archive | 
[**createGrader**](GradersApi.md#createGrader) | **POST** /graders/ | 
[**deleteGrader**](GradersApi.md#deleteGrader) | **DELETE** /graders/{grader_id} | 
[**downloadGraderLogs**](GradersApi.md#downloadGraderLogs) | **GET** /graders/{grader_id}/logs/download | 
[**getGrader**](GradersApi.md#getGrader) | **GET** /graders/{grader_id} | 
[**getGraderLogs**](GradersApi.md#getGraderLogs) | **GET** /graders/{grader_id}/logs | 
[**listGraders**](GradersApi.md#listGraders) | **GET** /graders/ | 
[**unarchiveGrader**](GradersApi.md#unarchiveGrader) | **POST** /graders/{grader_id}/unarchive | 
[**updateGrader**](GradersApi.md#updateGrader) | **PATCH** /graders/{grader_id} | 


<a name="archiveGrader"></a>
# **archiveGrader**
> archiveGrader(graderId)



Archive a grader

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
    apiInstance.archiveGrader(graderId);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#archiveGrader");
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

<a name="createGrader"></a>
# **createGrader**
> Grader createGrader(payload, xFields)



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
    Grader result = apiInstance.createGrader(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#createGrader");
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

<a name="deleteGrader"></a>
# **deleteGrader**
> deleteGrader(graderId)



Delete a grader by its ID

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
    apiInstance.deleteGrader(graderId);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#deleteGrader");
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

<a name="downloadGraderLogs"></a>
# **downloadGraderLogs**
> downloadGraderLogs(graderId)



Get the grader logs by submission ID

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
    apiInstance.downloadGraderLogs(graderId);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#downloadGraderLogs");
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

<a name="getGrader"></a>
# **getGrader**
> Grader getGrader(graderId, xFields)



Get details of a grader by its ID

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
    Grader result = apiInstance.getGrader(graderId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#getGrader");
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

<a name="getGraderLogs"></a>
# **getGraderLogs**
> GraderLogs getGraderLogs(graderId, step, logLines, xFields)



Get grader logs from loki

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
Integer step = 56; // Integer | Granularity of logs
Integer logLines = 56; // Integer | Number of lines to fetch
String xFields = "xFields_example"; // String | An optional fields mask
try {
    GraderLogs result = apiInstance.getGraderLogs(graderId, step, logLines, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#getGraderLogs");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Integer**|  |
 **step** | **Integer**| Granularity of logs | [optional]
 **logLines** | **Integer**| Number of lines to fetch | [optional]
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**GraderLogs**](GraderLogs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listGraders"></a>
# **listGraders**
> List&lt;Grader&gt; listGraders(perPage, page, meta, name, status, userId, xFields)



List all graders available

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
String perPage = "perPage_example"; // String | Results to display per page
String page = "page_example"; // String | Page number
String meta = "meta_example"; // String | Fetch graders containing this meta value
String name = "name_example"; // String | Fetch grader containing name
String status = "status_example"; // String | Fetch graders with this status
Integer userId = 56; // Integer | Fetch graders created by the user
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Grader> result = apiInstance.listGraders(perPage, page, meta, name, status, userId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#listGraders");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **String**| Results to display per page | [optional]
 **page** | **String**| Page number | [optional]
 **meta** | **String**| Fetch graders containing this meta value | [optional]
 **name** | **String**| Fetch grader containing name | [optional]
 **status** | **String**| Fetch graders with this status | [optional]
 **userId** | **Integer**| Fetch graders created by the user | [optional]
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;Grader&gt;**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="unarchiveGrader"></a>
# **unarchiveGrader**
> unarchiveGrader(graderId)



Unarchive a grader

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
    apiInstance.unarchiveGrader(graderId);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#unarchiveGrader");
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

<a name="updateGrader"></a>
# **updateGrader**
> Grader updateGrader(graderId, payload, xFields)



Update meta details of a grader by its ID. Warning: There is no data validation.

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
GraderMeta payload = new GraderMeta(); // GraderMeta | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Grader result = apiInstance.updateGrader(graderId, payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GradersApi#updateGrader");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Integer**|  |
 **payload** | [**GraderMeta**](GraderMeta.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

