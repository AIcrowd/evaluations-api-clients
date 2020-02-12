# EvaluationsApi.AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logoutAUser**](AuthApi.md#logoutAUser) | **POST** /auth/logout | 
[**userLogin**](AuthApi.md#userLogin) | **POST** /auth/login | 


<a name="logoutAUser"></a>
# **logoutAUser**
> logoutAUser()



### Example
```javascript
var EvaluationsApi = require('evaluations_api');
var defaultClient = EvaluationsApi.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new EvaluationsApi.AuthApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.logoutAUser(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="userLogin"></a>
# **userLogin**
> userLogin(payload)



### Example
```javascript
var EvaluationsApi = require('evaluations_api');

var apiInstance = new EvaluationsApi.AuthApi();

var payload = new EvaluationsApi.Login(); // Login | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.userLogin(payload, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

