# IO.Swagger.Api.UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteUserDao**](UsersApi.md#deleteuserdao) | **DELETE** /users/{user_id} | 
[**GetUserDao**](UsersApi.md#getuserdao) | **GET** /users/{user_id} | 
[**GetUserListDao**](UsersApi.md#getuserlistdao) | **GET** /users/ | 
[**PostUserListDao**](UsersApi.md#postuserlistdao) | **POST** /users/ | 
[**PutQuotaDao**](UsersApi.md#putquotadao) | **PUT** /users/addquota/{user_id} | 
[**PutUserDao**](UsersApi.md#putuserdao) | **PUT** /users/{user_id} | 


<a name="deleteuserdao"></a>
# **DeleteUserDao**
> void DeleteUserDao (int? userId)



Delete a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteUserDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new UsersApi();
            var userId = 56;  // int? | User identifier

            try
            {
                apiInstance.DeleteUserDao(userId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.DeleteUserDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int?**| User identifier | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserdao"></a>
# **GetUserDao**
> User GetUserDao (int? userId, string xFields = null)



Get information of a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new UsersApi();
            var userId = 56;  // int? | User identifier
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                User result = apiInstance.GetUserDao(userId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUserDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int?**| User identifier | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getuserlistdao"></a>
# **GetUserListDao**
> List<User> GetUserListDao (string xFields = null)



Get all user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetUserListDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new UsersApi();
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;User&gt; result = apiInstance.GetUserListDao(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUserListDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**List<User>**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postuserlistdao"></a>
# **PostUserListDao**
> User PostUserListDao (User payload, string xFields = null)



Create a new user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostUserListDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new UsersApi();
            var payload = new User(); // User | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                User result = apiInstance.PostUserListDao(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.PostUserListDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**User**](User.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="putquotadao"></a>
# **PutQuotaDao**
> void PutQuotaDao (int? userId, UserQuota payload)



Add or subtract quota for a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutQuotaDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new UsersApi();
            var userId = 56;  // int? | User identifier
            var payload = new UserQuota(); // UserQuota | 

            try
            {
                apiInstance.PutQuotaDao(userId, payload);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.PutQuotaDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int?**| User identifier | 
 **payload** | [**UserQuota**](UserQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="putuserdao"></a>
# **PutUserDao**
> User PutUserDao (int? userId, User payload, string xFields = null)



Update a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutUserDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new UsersApi();
            var userId = 56;  // int? | User identifier
            var payload = new User(); // User | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                User result = apiInstance.PutUserDao(userId, payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.PutUserDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int?**| User identifier | 
 **payload** | [**User**](User.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

