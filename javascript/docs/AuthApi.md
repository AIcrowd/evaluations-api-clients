# AicrowdEvaluations.AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogoutApi**](AuthApi.md#postLogoutApi) | **POST** /auth/logout | 
[**postUserLogin**](AuthApi.md#postUserLogin) | **POST** /auth/login | 


<a name="postLogoutApi"></a>
# **postLogoutApi**
> AuthLogout postLogoutApi(opts)



Logout a user

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.AuthApi();

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
apiInstance.postLogoutApi(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**AuthLogout**](AuthLogout.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postUserLogin"></a>
# **postUserLogin**
> AuthResponse postUserLogin(payload, opts)



User login

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');

var apiInstance = new AicrowdEvaluations.AuthApi();

var payload = new AicrowdEvaluations.Login(); // Login | 

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
apiInstance.postUserLogin(payload, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

