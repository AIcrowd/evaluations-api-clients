# ClustersApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCluster**](ClustersApi.md#createCluster) | **POST** /clusters/ | 
[**deleteCluster**](ClustersApi.md#deleteCluster) | **DELETE** /clusters/{cluster_id} | 
[**getCluster**](ClustersApi.md#getCluster) | **GET** /clusters/{cluster_id} | 
[**listClusters**](ClustersApi.md#listClusters) | **GET** /clusters/ | 


## **createCluster**



Add a new cluster to AIcrowd and install necessary dependencies

### Example
```bash
aicrowd-evaluations createCluster X-Fields:value
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

## **deleteCluster**



Delete a cluster by its ID

### Example
```bash
aicrowd-evaluations deleteCluster cluster_id=value
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

## **getCluster**



Get details of a cluster by its ID

### Example
```bash
aicrowd-evaluations getCluster cluster_id=value X-Fields:value
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

## **listClusters**



List all clusters available

### Example
```bash
aicrowd-evaluations listClusters X-Fields:value
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

