# \ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteClusterDao**](ClustersApi.md#DeleteClusterDao) | **Delete** /clusters/{cluster_id} | 
[**GetClusterDao**](ClustersApi.md#GetClusterDao) | **Get** /clusters/{cluster_id} | 
[**GetGraderListDao**](ClustersApi.md#GetGraderListDao) | **Get** /clusters/ | 
[**PostGraderListDao**](ClustersApi.md#PostGraderListDao) | **Post** /clusters/ | 


# **DeleteClusterDao**
> DeleteClusterDao(ctx, clusterId)


Delete a cluster

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **clusterId** | **int32**|  | 

### Return type

 (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetClusterDao**
> Cluster GetClusterDao(ctx, clusterId, optional)


Get information of a cluster

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **clusterId** | **int32**|  | 
 **optional** | ***GetClusterDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetClusterDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetGraderListDao**
> []Cluster GetGraderListDao(ctx, optional)


Get all clusters

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetGraderListDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a GetGraderListDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**[]Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostGraderListDao**
> Cluster PostGraderListDao(ctx, payload, optional)


Add a new cluster

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **payload** | [**Cluster**](Cluster.md)|  | 
 **optional** | ***PostGraderListDaoOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostGraderListDaoOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xFields** | **optional.String**| An optional fields mask | 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

