# AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postLogoutApi**](AuthApi.md#postLogoutApi) | **POST** /auth/logout | 
[**postUserLogin**](AuthApi.md#postUserLogin) | **POST** /auth/login | 


<a name="postLogoutApi"></a>
# **postLogoutApi**
> AuthLogout postLogoutApi(xFields)



Logout a user

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiClient;
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.Configuration;
//import com.aicrowd.evaluations.auth.*;
//import com.aicrowd.evaluations.api.AuthApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

AuthApi apiInstance = new AuthApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    AuthLogout result = apiInstance.postLogoutApi(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthApi#postLogoutApi");
    e.printStackTrace();
}
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
> AuthResponse postUserLogin(payload, xFields)



User login

### Example
```java
// Import classes:
//import com.aicrowd.evaluations.ApiException;
//import com.aicrowd.evaluations.api.AuthApi;


AuthApi apiInstance = new AuthApi();
Login payload = new Login(); // Login | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    AuthResponse result = apiInstance.postUserLogin(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthApi#postUserLogin");
    e.printStackTrace();
}
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

