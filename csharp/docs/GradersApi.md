# Com.AIcrowd.Evaluations.Api.GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateGrader**](GradersApi.md#creategrader) | **POST** /graders/ | 
[**DeleteGrader**](GradersApi.md#deletegrader) | **DELETE** /graders/{grader_id} | 
[**GetGrader**](GradersApi.md#getgrader) | **GET** /graders/{grader_id} | 
[**GetGraderLogs**](GradersApi.md#getgraderlogs) | **GET** /graders/{grader_id}/logs | 
[**ListGraders**](GradersApi.md#listgraders) | **GET** /graders/ | 
[**UpdateGrader**](GradersApi.md#updategrader) | **PATCH** /graders/{grader_id} | 


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

<a name="getgraderlogs"></a>
# **GetGraderLogs**
> void GetGraderLogs (int? graderId)



Get the grader logs by submission ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetGraderLogsExample
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
                apiInstance.GetGraderLogs(graderId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GradersApi.GetGraderLogs: " + e.Message );
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

<a name="listgraders"></a>
# **ListGraders**
> List<Grader> ListGraders (string perPage = null, string page = null, string meta = null, string name = null, string status = null, int? userId = null, string xFields = null)



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
            var perPage = perPage_example;  // string | Results to display per page (optional) 
            var page = page_example;  // string | Page number (optional) 
            var meta = meta_example;  // string | Fetch graders containing this meta value (optional) 
            var name = name_example;  // string | Fetch grader containing name (optional) 
            var status = status_example;  // string | Fetch graders with this status (optional) 
            var userId = 56;  // int? | Fetch graders created by the user (optional) 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;Grader&gt; result = apiInstance.ListGraders(perPage, page, meta, name, status, userId, xFields);
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
 **perPage** | **string**| Results to display per page | [optional] 
 **page** | **string**| Page number | [optional] 
 **meta** | **string**| Fetch graders containing this meta value | [optional] 
 **name** | **string**| Fetch grader containing name | [optional] 
 **status** | **string**| Fetch graders with this status | [optional] 
 **userId** | **int?**| Fetch graders created by the user | [optional] 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**List<Grader>**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updategrader"></a>
# **UpdateGrader**
> Grader UpdateGrader (int? graderId, GraderMeta payload, string xFields = null)



Update meta details of a grader by its ID. Warning: There is no data validation.

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class UpdateGraderExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new GradersApi();
            var graderId = 56;  // int? | 
            var payload = new GraderMeta(); // GraderMeta | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Grader result = apiInstance.UpdateGrader(graderId, payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling GradersApi.UpdateGrader: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **int?**|  | 
 **payload** | [**GraderMeta**](GraderMeta.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Grader**](Grader.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

