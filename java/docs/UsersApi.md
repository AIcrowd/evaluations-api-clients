# UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserDao**](UsersApi.md#deleteUserDao) | **DELETE** /users/{user_id} | 
[**getUserDao**](UsersApi.md#getUserDao) | **GET** /users/{user_id} | 
[**getUserListDao**](UsersApi.md#getUserListDao) | **GET** /users/ | 
[**postUserListDao**](UsersApi.md#postUserListDao) | **POST** /users/ | 
[**putQuotaDao**](UsersApi.md#putQuotaDao) | **PUT** /users/addquota/{user_id} | 
[**putUserDao**](UsersApi.md#putUserDao) | **PUT** /users/{user_id} | 


<a name="deleteUserDao"></a>
# **deleteUserDao**
> deleteUserDao(userId)



Delete a user

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

UsersApi apiInstance = new UsersApi();
Integer userId = 56; // Integer | User identifier
try {
    apiInstance.deleteUserDao(userId);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#deleteUserDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Integer**| User identifier |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserDao"></a>
# **getUserDao**
> User getUserDao(userId, xFields)



Get information of a user

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

UsersApi apiInstance = new UsersApi();
Integer userId = 56; // Integer | User identifier
String xFields = "xFields_example"; // String | An optional fields mask
try {
    User result = apiInstance.getUserDao(userId, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUserDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Integer**| User identifier |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserListDao"></a>
# **getUserListDao**
> List&lt;User&gt; getUserListDao(xFields)



Get all user

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

UsersApi apiInstance = new UsersApi();
String xFields = "xFields_example"; // String | An optional fields mask
try {
    List<User> result = apiInstance.getUserListDao(xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUserListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**List&lt;User&gt;**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postUserListDao"></a>
# **postUserListDao**
> User postUserListDao(payload, xFields)



Create a new user

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

UsersApi apiInstance = new UsersApi();
User payload = new User(); // User | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    User result = apiInstance.postUserListDao(payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#postUserListDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putQuotaDao"></a>
# **putQuotaDao**
> putQuotaDao(userId, payload)



Add or subtract quota for a user

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

UsersApi apiInstance = new UsersApi();
Integer userId = 56; // Integer | User identifier
UserQuota payload = new UserQuota(); // UserQuota | 
try {
    apiInstance.putQuotaDao(userId, payload);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#putQuotaDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Integer**| User identifier |
 **payload** | [**UserQuota**](UserQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putUserDao"></a>
# **putUserDao**
> User putUserDao(userId, payload, xFields)



Update a user

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure API key authorization: api_key
ApiKeyAuth api_key = (ApiKeyAuth) defaultClient.getAuthentication("api_key");
api_key.setApiKey("YOUR API KEY");
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//api_key.setApiKeyPrefix("Token");

UsersApi apiInstance = new UsersApi();
Integer userId = 56; // Integer | User identifier
User payload = new User(); // User | 
String xFields = "xFields_example"; // String | An optional fields mask
try {
    User result = apiInstance.putUserDao(userId, payload, xFields);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#putUserDao");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Integer**| User identifier |
 **payload** | [**User**](User.md)|  |
 **xFields** | **String**| An optional fields mask | [optional]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

