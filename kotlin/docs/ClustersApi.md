# ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteClusterDao**](ClustersApi.md#deleteClusterDao) | **DELETE** /clusters/{cluster_id} | 
[**getClusterDao**](ClustersApi.md#getClusterDao) | **GET** /clusters/{cluster_id} | 
[**getClusterListDao**](ClustersApi.md#getClusterListDao) | **GET** /clusters/ | 
[**postClusterListDao**](ClustersApi.md#postClusterListDao) | **POST** /clusters/ | 


<a name="deleteClusterDao"></a>
# **deleteClusterDao**
> deleteClusterDao(clusterId)



Delete a cluster

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val clusterId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteClusterDao(clusterId)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#deleteClusterDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#deleteClusterDao")
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

<a name="getClusterDao"></a>
# **getClusterDao**
> Cluster getClusterDao(clusterId, xFields)



Get information of a cluster

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val clusterId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Cluster = apiInstance.getClusterDao(clusterId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#getClusterDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#getClusterDao")
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

<a name="getClusterListDao"></a>
# **getClusterListDao**
> kotlin.Array&lt;Cluster&gt; getClusterListDao(xFields)



Get all clusters

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Cluster> = apiInstance.getClusterListDao(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#getClusterListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#getClusterListDao")
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

<a name="postClusterListDao"></a>
# **postClusterListDao**
> Cluster postClusterListDao(payload, xFields)



Add a new cluster

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = ClustersApi()
val payload : Cluster =  // Cluster | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Cluster = apiInstance.postClusterListDao(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#postClusterListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#postClusterListDao")
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

