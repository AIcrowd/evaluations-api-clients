# OrganisationsApi

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
> Organisation createOrganisation(payload, xFields)



Create a new organisation

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.OrganisationsApi;

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
    Organisation result = apiInstance.createOrganisation(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#createOrganisation");
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

<a name="deleteOrganisation"></a>
# **deleteOrganisation**
> deleteOrganisation(organisationId)



Delete an Organisation

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | 
try {
    apiInstance.deleteOrganisation(organisationId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#deleteOrganisation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organisationId, xFields)



Get details of an organisation

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Organisation result = apiInstance.getOrganisation(organisationId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#getOrganisation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**|  |
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
> List&lt;Organisation&gt; listOrganisations(xFields)



List all organisations

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<Organisation> result = apiInstance.listOrganisations(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#listOrganisations");
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

<a name="updateOrganisation"></a>
# **updateOrganisation**
> Organisation updateOrganisation(organisationId, payload, xFields)



Update an Organisation

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | 
Organisation payload = new Organisation(); // Organisation | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    Organisation result = apiInstance.updateOrganisation(organisationId, payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#updateOrganisation");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**|  |
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
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.OrganisationsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

OrganisationsApi apiInstance = new OrganisationsApi();
Integer organisationId = 56; // Integer | 
OrganisationQuota payload = new OrganisationQuota(); // OrganisationQuota | 
try {
    apiInstance.updateOrganisationQuota(organisationId, payload);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganisationsApi#updateOrganisationQuota");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **Integer**|  |
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

