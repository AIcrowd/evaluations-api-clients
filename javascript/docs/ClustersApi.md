# EvaluationsApi.ClustersApi

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
```javascript
var EvaluationsApi = require('evaluations_api');
var defaultClient = EvaluationsApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new EvaluationsApi.ClustersApi();

var clusterId = 56; // Number | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deleteClusterDao(clusterId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getClusterDao"></a>
# **getClusterDao**
> Cluster getClusterDao(clusterId, opts)



Get information of a cluster

### Example
```javascript
var EvaluationsApi = require('evaluations_api');
var defaultClient = EvaluationsApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new EvaluationsApi.ClustersApi();

var clusterId = 56; // Number | 

var opts = { 
  'xFields': "xFields_example" // String | An optional fields mask
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getClusterDao(clusterId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **Number**|  | 
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
> [Cluster] getGraderListDao(opts)



Get all clusters

### Example
```javascript
var EvaluationsApi = require('evaluations_api');
var defaultClient = EvaluationsApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new EvaluationsApi.ClustersApi();

var opts = { 
  'xFields': "xFields_example" // String | An optional fields mask
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getGraderListDao(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**[Cluster]**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postGraderListDao"></a>
# **postGraderListDao**
> Cluster postGraderListDao(payload, opts)



Add a new cluster

### Example
```javascript
var EvaluationsApi = require('evaluations_api');
var defaultClient = EvaluationsApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new EvaluationsApi.ClustersApi();

var payload = new EvaluationsApi.Cluster(); // Cluster | 

var opts = { 
  'xFields': "xFields_example" // String | An optional fields mask
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.postGraderListDao(payload, opts, callback);
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

