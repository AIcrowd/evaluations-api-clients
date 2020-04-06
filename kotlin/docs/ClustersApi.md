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
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val payload : Cluster =  // Cluster | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Cluster = apiInstance.createCluster(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#createCluster")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#createCluster")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

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
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val clusterId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteCluster(clusterId)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#deleteCluster")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#deleteCluster")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **kotlin.Int**|  |

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
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val clusterId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Cluster = apiInstance.getCluster(clusterId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#getCluster")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#getCluster")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **kotlin.Int**|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listClusters"></a>
# **listClusters**
> kotlin.Array&lt;Cluster&gt; listClusters(xFields)



List all clusters available

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Cluster> = apiInstance.listClusters(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#listClusters")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#listClusters")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;Cluster&gt;**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

