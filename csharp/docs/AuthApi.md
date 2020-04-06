# Com.AIcrowd.Evaluations.Api.AuthApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Login**](AuthApi.md#login) | **POST** /auth/login | 
[**Logout**](AuthApi.md#logout) | **POST** /auth/logout | 


<a name="login"></a>
# **Login**
> AuthResponse Login (Login payload, string xFields = null)



Log in a user with email and password.

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class LoginExample
    {
        public void main()
        {
            var apiInstance = new AuthApi();
            var payload = new Login(); // Login | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                AuthResponse result = apiInstance.Login(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AuthApi.Login: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Login**](Login.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="logout"></a>
# **Logout**
> AuthLogout Logout (string xFields = null)



Invalidate the current authorization token.

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class LogoutExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new AuthApi();
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                AuthLogout result = apiInstance.Logout(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AuthApi.Logout: " + e.Message );
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

[**AuthLogout**](AuthLogout.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

