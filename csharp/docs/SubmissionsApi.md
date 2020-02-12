# IO.Swagger.Api.SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteSubmissionDao**](SubmissionsApi.md#deletesubmissiondao) | **DELETE** /submissions/{submission_id} | 
[**GetSubmissionDao**](SubmissionsApi.md#getsubmissiondao) | **GET** /submissions/{submission_id} | 
[**GetSubmissionListDao**](SubmissionsApi.md#getsubmissionlistdao) | **GET** /submissions/ | 
[**PostSubmissionListDao**](SubmissionsApi.md#postsubmissionlistdao) | **POST** /submissions/ | 


<a name="deletesubmissiondao"></a>
# **DeleteSubmissionDao**
> void DeleteSubmissionDao (int? submissionId)



Stop evaluation of a submission

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteSubmissionDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new SubmissionsApi();
            var submissionId = 56;  // int? | 

            try
            {
                apiInstance.DeleteSubmissionDao(submissionId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.DeleteSubmissionDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **int?**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsubmissiondao"></a>
# **GetSubmissionDao**
> Submissions GetSubmissionDao (int? submissionId, string xFields = null)



Get details of a submission

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSubmissionDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new SubmissionsApi();
            var submissionId = 56;  // int? | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Submissions result = apiInstance.GetSubmissionDao(submissionId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.GetSubmissionDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **int?**|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getsubmissionlistdao"></a>
# **GetSubmissionListDao**
> List<Submissions> GetSubmissionListDao (string xFields = null)



Get all submissions

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetSubmissionListDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new SubmissionsApi();
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;Submissions&gt; result = apiInstance.GetSubmissionListDao(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.GetSubmissionListDao: " + e.Message );
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

[**List<Submissions>**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postsubmissionlistdao"></a>
# **PostSubmissionListDao**
> Submissions PostSubmissionListDao (Submissions payload, string xFields = null)



Make a new submission

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostSubmissionListDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new SubmissionsApi();
            var payload = new Submissions(); // Submissions | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Submissions result = apiInstance.PostSubmissionListDao(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.PostSubmissionListDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Submissions**](Submissions.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Submissions**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

