# Com.AIcrowd.Evaluations.Api.GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateGrader**](GradersApi.md#creategrader) | **POST** /graders/ | 
[**DeleteGrader**](GradersApi.md#deletegrader) | **DELETE** /graders/{grader_id} | 
[**GetGrader**](GradersApi.md#getgrader) | **GET** /graders/{grader_id} | 
[**ListGraders**](GradersApi.md#listgraders) | **GET** /graders/ | 


<a name="creategrader"></a>
# **CreateGrader**
> Grader CreateGrader (Grader payload, string xFields = null)



Create a new grader

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class CreateGraderExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new GradersApi();
            var payload = new Grader(); // Grader | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Grader result = apiInstance.CreateGrader(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GradersApi.CreateGrader: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Grader**](Grader.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletegrader"></a>
# **DeleteGrader**
> void DeleteGrader (int? graderId)



Delete a grader by its ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class DeleteGraderExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new GradersApi();
            var graderId = 56;  // int? | 

            try
            {
                apiInstance.DeleteGrader(graderId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GradersApi.DeleteGrader: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **int?**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getgrader"></a>
# **GetGrader**
> Grader GetGrader (int? graderId, string xFields = null)



Get details of a grader by its ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetGraderExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new GradersApi();
            var graderId = 56;  // int? | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Grader result = apiInstance.GetGrader(graderId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GradersApi.GetGrader: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **int?**|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listgraders"></a>
# **ListGraders**
> List<Grader> ListGraders (string xFields = null)



List all graders available

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class ListGradersExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new GradersApi();
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;Grader&gt; result = apiInstance.ListGraders(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GradersApi.ListGraders: " + e.Message );
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

[**List<Grader>**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

