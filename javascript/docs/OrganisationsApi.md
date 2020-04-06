# AicrowdEvaluations.OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrganisation**](OrganisationsApi.md#createOrganisation) | **POST** /organisations/ | 
[**deleteOrganisation**](OrganisationsApi.md#deleteOrganisation) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisation**](OrganisationsApi.md#getOrganisation) | **GET** /organisations/{organisation_id} | 
[**listOrganisations**](OrganisationsApi.md#listOrganisations) | **GET** /organisations/ | 
[**updateOrganisation**](OrganisationsApi.md#updateOrganisation) | **PUT** /organisations/{organisation_id} | 
[**updateOrganisationQuota**](OrganisationsApi.md#updateOrganisationQuota) | **PUT** /organisations/{organisation_id}/addquota | 


<a name="createOrganisation"></a>
# **createOrganisation**
> Organisation createOrganisation(payload, opts)



Create a new organisation

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.OrganisationsApi();

var payload = new AicrowdEvaluations.Organisation(); // Organisation | 

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
apiInstance.createOrganisation(payload, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteOrganisation"></a>
# **deleteOrganisation**
> deleteOrganisation(organisationId)



Delete an Organisation

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.OrganisationsApi();

var organisationId = 56; // Number | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deleteOrganisation(organisationId, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organisationId, opts)



Get details of an organisation

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.OrganisationsApi();

var organisationId = 56; // Number | 

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
apiInstance.getOrganisation(organisationId, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Number**|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listOrganisations"></a>
# **listOrganisations**
> [Organisation] listOrganisations(opts)



List all organisations

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.OrganisationsApi();

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
apiInstance.listOrganisations(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**[Organisation]**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateOrganisation"></a>
# **updateOrganisation**
> Organisation updateOrganisation(organisationIdpayload, opts)



Update an Organisation

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.OrganisationsApi();

var organisationId = 56; // Number | 

var payload = new AicrowdEvaluations.Organisation(); // Organisation | 

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
apiInstance.updateOrganisation(organisationIdpayload, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Number**|  | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **xFields** | **String**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateOrganisationQuota"></a>
# **updateOrganisationQuota**
> updateOrganisationQuota(organisationId, payload)



Add or subtract quota for an organisation

### Example
```javascript
var AicrowdEvaluations = require('aicrowd-evaluations');
var defaultClient = AicrowdEvaluations.ApiClient.instance;

// Configure API key authorization: api_key
var api_key = defaultClient.authentications['api_key'];
api_key.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.apiKeyPrefix = 'Token';

var apiInstance = new AicrowdEvaluations.OrganisationsApi();

var organisationId = 56; // Number | 

var payload = new AicrowdEvaluations.OrganisationQuota(); // OrganisationQuota | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.updateOrganisationQuota(organisationId, payload, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Number**|  | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

