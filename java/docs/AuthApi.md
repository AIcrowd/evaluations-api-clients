# AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logoutAUser**](AuthApi.md#logoutAUser) | **POST** /auth/logout | 
[**userLogin**](AuthApi.md#userLogin) | **POST** /auth/login | 


<a name="logoutAUser"></a>
# **logoutAUser**
> logoutAUser()



### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.AuthApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

AuthApi apiInstance = new AuthApi();
try {
    apiInstance.logoutAUser();
} catch (ApiException e) {
    System.err.println("Exception when calling AuthApi#logoutAUser");
    e.printStackTrace();
}
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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.AuthApi;


AuthApi apiInstance = new AuthApi();
Login payload = new Login(); // Login | 
try {
    apiInstance.userLogin(payload);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthApi#userLogin");
    e.printStackTrace();
}
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

