# ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteClusterDao**](ClustersApi.md#deleteClusterDao) | **DELETE** /clusters/{cluster_id} | 
[**getClusterDao**](ClustersApi.md#getClusterDao) | **GET** /clusters/{cluster_id} | 
[**getGraderListDao**](ClustersApi.md#getGraderListDao) | **GET** /clusters/ | 
[**postGraderListDao**](ClustersApi.md#postGraderListDao) | **POST** /clusters/ | 


<a name="deleteClusterDao"></a>
# **deleteClusterDao**
> deleteClusterDao(clusterId)



Delete a cluster

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ClustersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ClustersApi apiInstance = new ClustersApi();
Integer clusterId = 56; // Integer | 
try {
    apiInstance.deleteClusterDao(clusterId);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#deleteClusterDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **Integer**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getClusterDao"></a>
# **getClusterDao**
> Cluster getClusterDao(clusterId, xFields)



Get information of a cluster

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ClustersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ClustersApi apiInstance = new ClustersApi();
Integer clusterId = 56; // Integer | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Cluster result = apiInstance.getClusterDao(clusterId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#getClusterDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **Integer**|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGraderListDao"></a>
# **getGraderListDao**
> List&lt;Cluster&gt; getGraderListDao(xFields)



Get all clusters

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ClustersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ClustersApi apiInstance = new ClustersApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Cluster> result = apiInstance.getGraderListDao(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#getGraderListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;Cluster&gt;**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postGraderListDao"></a>
# **postGraderListDao**
> Cluster postGraderListDao(payload, xFields)



Add a new cluster

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.ClustersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ClustersApi apiInstance = new ClustersApi();
Cluster payload = new Cluster(); // Cluster | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Cluster result = apiInstance.postGraderListDao(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#postGraderListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

