# AicrowdEvaluations.ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postGenericFeedbackContract**](ArgoApi.md#postGenericFeedbackContract) | **POST** /argo/{model_name}/{object_id} | 
[**postGraderFeedbackDao**](ArgoApi.md#postGraderFeedbackDao) | **POST** /argo/graders/{grader_id} | 
[**postSubmissionFeedbackDao**](ArgoApi.md#postSubmissionFeedbackDao) | **POST** /argo/submissions/{submission_id} | 


<a name="postGenericFeedbackContract"></a>
# **postGenericFeedbackContract**
> postGenericFeedbackContract(modelName, objectId, payload)



Update the status of an object

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.ArgoApi();

var modelName = "modelName_example"; // String | 

var objectId = 56; // Number | 

var payload = new AicrowdEvaluations.GenericFeedback(); // GenericFeedback | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postGenericFeedbackContract(modelName, objectId, payload, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelName** | **String**|  | 
 **objectId** | **Number**|  | 
 **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postGraderFeedbackDao"></a>
# **postGraderFeedbackDao**
> postGraderFeedbackDao(graderId, payload)



Update the grader details

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.ArgoApi();

var graderId = 56; // Number | 

var payload = new AicrowdEvaluations.GraderFeedback(); // GraderFeedback | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postGraderFeedbackDao(graderId, payload, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **Number**|  | 
 **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSubmissionFeedbackDao"></a>
# **postSubmissionFeedbackDao**
> postSubmissionFeedbackDao(submissionId, payload)



Update the submission details

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.ArgoApi();

var submissionId = 56; // Number | 

var payload = new AicrowdEvaluations.SubmissionFeedback(); // SubmissionFeedback | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postSubmissionFeedbackDao(submissionId, payload, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Number**|  | 
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

