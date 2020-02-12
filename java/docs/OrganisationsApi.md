# OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOrganisationDao**](OrganisationsApi.md#deleteOrganisationDao) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisationDao**](OrganisationsApi.md#getOrganisationDao) | **GET** /organisations/{organisation_id} | 
[**getOrganisationListDao**](OrganisationsApi.md#getOrganisationListDao) | **GET** /organisations/ | 
[**postOrganisationListDao**](OrganisationsApi.md#postOrganisationListDao) | **POST** /organisations/ | 
[**putOrganisationDao**](OrganisationsApi.md#putOrganisationDao) | **PUT** /organisations/{organisation_id} | 
[**putQuotaDao**](OrganisationsApi.md#putQuotaDao) | **PUT** /organisations/addquota/{organisation_id} | 


<a name="deleteOrganisationDao"></a>
# **deleteOrganisationDao**
> deleteOrganisationDao(organisationId)



Delete an Organisation

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | Organisation identifier
try {
    apiInstance.deleteOrganisationDao(organisationId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#deleteOrganisationDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**| Organisation identifier |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisationDao"></a>
# **getOrganisationDao**
> Organisation getOrganisationDao(organisationId, xFields)



Get information of an organisation

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | Organisation identifier
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Organisation result = apiInstance.getOrganisationDao(organisationId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#getOrganisationDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**| Organisation identifier |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisationListDao"></a>
# **getOrganisationListDao**
> List&lt;Organisation&gt; getOrganisationListDao(xFields)



Get all organisations

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Organisation> result = apiInstance.getOrganisationListDao(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#getOrganisationListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;Organisation&gt;**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postOrganisationListDao"></a>
# **postOrganisationListDao**
> Organisation postOrganisationListDao(payload, xFields)



Create a new organisation

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Organisation payload = new Organisation(); // Organisation | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Organisation result = apiInstance.postOrganisationListDao(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#postOrganisationListDao");
    e.printStackTrace();
}
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

<a name="putOrganisationDao"></a>
# **putOrganisationDao**
> Organisation putOrganisationDao(organisationId, payload, xFields)



Update an Organisation

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | Organisation identifier
Organisation payload = new Organisation(); // Organisation | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Organisation result = apiInstance.putOrganisationDao(organisationId, payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#putOrganisationDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**| Organisation identifier |
 **payload** | [**Organisation**](Organisation.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putQuotaDao"></a>
# **putQuotaDao**
> putQuotaDao(organisationId, payload)



Add or subtract quota for an organisation

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | Organisation identifier
OrganisationQuota payload = new OrganisationQuota(); // OrganisationQuota | 
try {
    apiInstance.putQuotaDao(organisationId, payload);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#putQuotaDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**| Organisation identifier |
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

