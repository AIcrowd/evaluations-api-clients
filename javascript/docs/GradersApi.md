# AicrowdEvaluations.GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGrader**](GradersApi.md#createGrader) | **POST** /graders/ | 
[**deleteGrader**](GradersApi.md#deleteGrader) | **DELETE** /graders/{grader_id} | 
[**getGrader**](GradersApi.md#getGrader) | **GET** /graders/{grader_id} | 
[**getGraderLogs**](GradersApi.md#getGraderLogs) | **GET** /graders/{grader_id}/logs | 
[**listGraders**](GradersApi.md#listGraders) | **GET** /graders/ | 
[**updateGrader**](GradersApi.md#updateGrader) | **PATCH** /graders/{grader_id} | 


<a name="createGrader"></a>
# **createGrader**
> Grader createGrader(payload, opts)



Create a new grader

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.GradersApi();

var payload = new AicrowdEvaluations.Grader(); // Grader | 

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
apiInstance.createGrader(payload, opts, callback);
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
> deleteGrader(graderId, )



Delete a grader by its ID

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.GradersApi();

var graderId = 56; // Number | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deleteGrader(graderId, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getGrader"></a>
# **getGrader**
> Grader getGrader(graderId, , opts)



Get details of a grader by its ID

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.GradersApi();

var graderId = 56; // Number | 

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
apiInstance.getGrader(graderId, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Number**|  | 
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
> getGraderLogs(graderId)



Get the grader logs by submission ID

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.GradersApi();

var graderId = 56; // Number | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.getGraderLogs(graderId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listGraders"></a>
# **listGraders**
> [Grader] listGraders(opts)



List all graders available

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.GradersApi();

var opts = { 
  'perPage': "perPage_example", // String | Results to display per page
  'page': "page_example", // String | Page number
  'meta': "meta_example", // String | Fetch graders containing this meta value
  'name': "name_example", // String | Fetch grader containing name
  'status': "status_example", // String | Fetch graders with this status
  'userId': 56, // Number | Fetch graders created by the user
  'xFields': "xFields_example" // String | An optional fields mask
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.listGraders(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **String**| Results to display per page | [optional] 
 **page** | **String**| Page number | [optional] 
 **meta** | **String**| Fetch graders containing this meta value | [optional] 
 **name** | **String**| Fetch grader containing name | [optional] 
 **status** | **String**| Fetch graders with this status | [optional] 
 **userId** | **Number**| Fetch graders created by the user | [optional] 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateGrader"></a>
# **updateGrader**
> Grader updateGrader(graderId, payload, opts)



Update meta details of a grader by its ID. Warning: There is no data validation.

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.GradersApi();

var graderId = 56; // Number | 

var payload = new AicrowdEvaluations.GraderMeta(); // GraderMeta | 

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
apiInstance.updateGrader(graderId, payload, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Number**|  | 
 **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

