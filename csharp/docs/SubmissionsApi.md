# Com.AIcrowd.Evaluations.Api.SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateSubmission**](SubmissionsApi.md#createsubmission) | **POST** /submissions/ | 
[**DeleteSubmission**](SubmissionsApi.md#deletesubmission) | **DELETE** /submissions/{submission_id} | 
[**GetSubmission**](SubmissionsApi.md#getsubmission) | **GET** /submissions/{submission_id} | 
[**GetSubmissionData**](SubmissionsApi.md#getsubmissiondata) | **GET** /submissions/{submission_id}/data | 
[**GetSubmissionLogs**](SubmissionsApi.md#getsubmissionlogs) | **GET** /submissions/{submission_id}/logs | 
[**ListSubmissions**](SubmissionsApi.md#listsubmissions) | **GET** /submissions/ | 
[**RetrySubmissions**](SubmissionsApi.md#retrysubmissions) | **POST** /submissions/retry | 


<a name="createsubmission"></a>
# **CreateSubmission**
> Submissions CreateSubmission (Submissions payload, string xFields = null)



Make a new submission

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class CreateSubmissionExample
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
                Submissions result = apiInstance.CreateSubmission(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.CreateSubmission: " + e.Message );
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

<a name="deletesubmission"></a>
# **DeleteSubmission**
> void DeleteSubmission (int? submissionId)



Stop evaluation of a submission and delete it

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class DeleteSubmissionExample
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
                apiInstance.DeleteSubmission(submissionId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.DeleteSubmission: " + e.Message );
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

<a name="getsubmission"></a>
# **GetSubmission**
> Submissions GetSubmission (int? submissionId, string xFields = null)



Get details of a submission by its ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetSubmissionExample
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
                Submissions result = apiInstance.GetSubmission(submissionId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.GetSubmission: " + e.Message );
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

<a name="getsubmissiondata"></a>
# **GetSubmissionData**
> void GetSubmissionData (int? submissionId)



Get the submission data by submission ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetSubmissionDataExample
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
                apiInstance.GetSubmissionData(submissionId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.GetSubmissionData: " + e.Message );
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

<a name="getsubmissionlogs"></a>
# **GetSubmissionLogs**
> void GetSubmissionLogs (int? submissionId)



Get the submission logs by submission ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetSubmissionLogsExample
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
                apiInstance.GetSubmissionLogs(submissionId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.GetSubmissionLogs: " + e.Message );
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

<a name="listsubmissions"></a>
# **ListSubmissions**
> List<Submissions> ListSubmissions (string meta = null, string status = null, int? graderId = null, int? userId = null, string xFields = null)



List all submissions available

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class ListSubmissionsExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new SubmissionsApi();
            var meta = meta_example;  // string | Fetch submissions containing this meta value (optional) 
            var status = status_example;  // string | Fetch submissions with this status (optional) 
            var graderId = 56;  // int? | Fetch submissions for a grader (optional) 
            var userId = 56;  // int? | Fetch submissions created by the user (optional) 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;Submissions&gt; result = apiInstance.ListSubmissions(meta, status, graderId, userId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.ListSubmissions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **string**| Fetch submissions containing this meta value | [optional] 
 **status** | **string**| Fetch submissions with this status | [optional] 
 **graderId** | **int?**| Fetch submissions for a grader | [optional] 
 **userId** | **int?**| Fetch submissions created by the user | [optional] 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**List<Submissions>**](Submissions.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="retrysubmissions"></a>
# **RetrySubmissions**
> SubmissionRetry RetrySubmissions (SubmissionRetryInput payload, string xFields = null)



Retry the submissions with given IDs

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class RetrySubmissionsExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new SubmissionsApi();
            var payload = new SubmissionRetryInput(); // SubmissionRetryInput | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                SubmissionRetry result = apiInstance.RetrySubmissions(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.RetrySubmissions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SubmissionRetryInput**](SubmissionRetryInput.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**SubmissionRetry**](SubmissionRetry.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

