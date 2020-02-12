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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

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
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

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

<a name="getGraderListDao"></a>
# **getGraderListDao**
> kotlin.Array&lt;Cluster&gt; getGraderListDao(xFields)



Get all clusters

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ClustersApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Cluster> = apiInstance.getGraderListDao(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#getGraderListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#getGraderListDao")
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

<a name="postGraderListDao"></a>
# **postGraderListDao**
> Cluster postGraderListDao(payload, xFields)



Add a new cluster

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = ClustersApi()
val payload : Cluster =  // Cluster | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Cluster = apiInstance.postGraderListDao(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ClustersApi#postGraderListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ClustersApi#postGraderListDao")
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

