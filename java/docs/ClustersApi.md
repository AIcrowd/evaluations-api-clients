# ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCluster**](ClustersApi.md#createCluster) | **POST** /clusters/ | 
[**deleteCluster**](ClustersApi.md#deleteCluster) | **DELETE** /clusters/{cluster_id} | 
[**getCluster**](ClustersApi.md#getCluster) | **GET** /clusters/{cluster_id} | 
[**listClusters**](ClustersApi.md#listClusters) | **GET** /clusters/ | 


<a name="createCluster"></a>
# **createCluster**
> Cluster createCluster(payload, xFields)



Add a new cluster to AIcrowd and install necessary dependencies

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ClustersApi;

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
    Cluster result = apiInstance.createCluster(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#createCluster");
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

<a name="deleteCluster"></a>
# **deleteCluster**
> deleteCluster(clusterId)



Delete a cluster by its ID

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ClustersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ClustersApi apiInstance = new ClustersApi();
Integer clusterId = 56; // Integer | 
try {
    apiInstance.deleteCluster(clusterId);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#deleteCluster");
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

<a name="getCluster"></a>
# **getCluster**
> Cluster getCluster(clusterId, xFields)



Get details of a cluster by its ID

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ClustersApi;

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
    Cluster result = apiInstance.getCluster(clusterId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#getCluster");
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

<a name="listClusters"></a>
# **listClusters**
> List&lt;Cluster&gt; listClusters(xFields)



List all clusters available

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.ClustersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

ClustersApi apiInstance = new ClustersApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Cluster> result = apiInstance.listClusters(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ClustersApi#listClusters");
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

