# ClustersApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteClusterDao**](ClustersApi.md#deleteClusterDao) | **DELETE** /clusters/{cluster_id} | 
[**getClusterDao**](ClustersApi.md#getClusterDao) | **GET** /clusters/{cluster_id} | 
[**getGraderListDao**](ClustersApi.md#getGraderListDao) | **GET** /clusters/ | 
[**postGraderListDao**](ClustersApi.md#postGraderListDao) | **POST** /clusters/ | 


## **deleteClusterDao**



Delete a cluster

### Example
```bash
 deleteClusterDao cluster_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **integer** |  |

### Return type

(empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getClusterDao**



Get information of a cluster

### Example
```bash
 getClusterDao cluster_id=value X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **integer** |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getGraderListDao**



Get all clusters

### Example
```bash
 getGraderListDao X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**array[Cluster]**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **postGraderListDao**



Add a new cluster

### Example
```bash
 postGraderListDao X-Fields:value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md) |  |
 **xFields** | **string** | An optional fields mask | [optional]

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

