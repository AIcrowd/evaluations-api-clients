# AicrowdEvaluations.SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSubmissionDao**](SubmissionsApi.md#deleteSubmissionDao) | **DELETE** /submissions/{submission_id} | 
[**getSubmissionDao**](SubmissionsApi.md#getSubmissionDao) | **GET** /submissions/{submission_id} | 
[**getSubmissionDataDao**](SubmissionsApi.md#getSubmissionDataDao) | **GET** /submissions/{submission_id}/data | 
[**getSubmissionListDao**](SubmissionsApi.md#getSubmissionListDao) | **GET** /submissions/ | 
[**postSubmissionListDao**](SubmissionsApi.md#postSubmissionListDao) | **POST** /submissions/ | 


<a name="deleteSubmissionDao"></a>
# **deleteSubmissionDao**
> deleteSubmissionDao(submissionId)



Stop evaluation of a submission

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.SubmissionsApi();

var submissionId = 56; // Number | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deleteSubmissionDao(submissionId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionDao"></a>
# **getSubmissionDao**
> Submissions getSubmissionDao(submissionId, opts)



Get details of a submission

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.SubmissionsApi();

var submissionId = 56; // Number | 

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
apiInstance.getSubmissionDao(submissionId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Number**|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionDataDao"></a>
# **getSubmissionDataDao**
> getSubmissionDataDao(submissionId)



Get the submission data

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.SubmissionsApi();

var submissionId = 56; // Number | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.getSubmissionDataDao(submissionId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSubmissionListDao"></a>
# **getSubmissionListDao**
> [Submissions] getSubmissionListDao(opts)



Get all submissions

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.SubmissionsApi();

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
apiInstance.getSubmissionListDao(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**[Submissions]**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postSubmissionListDao"></a>
# **postSubmissionListDao**
> Submissions postSubmissionListDao(payload, opts)



Make a new submission

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.SubmissionsApi();

var payload = new AicrowdEvaluations.Submissions(); // Submissions | 

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
apiInstance.postSubmissionListDao(payload, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

