# AicrowdEvaluations.GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGraderDao**](GradersApi.md#deleteGraderDao) | **DELETE** /graders/{grader_id} | 
[**getGraderDao**](GradersApi.md#getGraderDao) | **GET** /graders/{grader_id} | 
[**getGraderListDao**](GradersApi.md#getGraderListDao) | **GET** /graders/ | 
[**postGraderListDao**](GradersApi.md#postGraderListDao) | **POST** /graders/ | 
[**putGraderDao**](GradersApi.md#putGraderDao) | **PUT** /graders/{grader_id} | 


<a name="deleteGraderDao"></a>
# **deleteGraderDao**
> deleteGraderDao(graderId)



Delete a grader

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
apiInstance.deleteGraderDao(graderId, callback);
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

<a name="getGraderDao"></a>
# **getGraderDao**
> Grader getGraderDao(graderId, opts)



Get information of a grader

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
apiInstance.getGraderDao(graderId, opts, callback);
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

<a name="getGraderListDao"></a>
# **getGraderListDao**
> [Grader] getGraderListDao(opts)



Get all grader

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

[**[Grader]**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postGraderListDao"></a>
# **postGraderListDao**
> Grader postGraderListDao(payload, opts)



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
apiInstance.postGraderListDao(payload, opts, callback);
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

<a name="putGraderDao"></a>
# **putGraderDao**
> Grader putGraderDao(graderIdpayload, opts)



Update a grader

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
apiInstance.putGraderDao(graderIdpayload, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Number**|  | 
 **payload** | [**Grader**](Grader.md)|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

