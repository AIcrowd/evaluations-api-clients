# IO.Swagger.Api.ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**PostGenericFeedbackContract**](ArgoApi.md#postgenericfeedbackcontract) | **POST** /argo/{model_name}/{object_id} | 
[**PostGraderFeedbackDao**](ArgoApi.md#postgraderfeedbackdao) | **POST** /argo/graders/{grader_id} | 
[**PostSubmissionFeedbackDao**](ArgoApi.md#postsubmissionfeedbackdao) | **POST** /argo/submissions/{submission_id} | 


<a name="postgenericfeedbackcontract"></a>
# **PostGenericFeedbackContract**
> void PostGenericFeedbackContract (string modelName, int? objectId, GenericFeedback payload)



Update the status of an object

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostGenericFeedbackContractExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ArgoApi();
            var modelName = modelName_example;  // string | 
            var objectId = 56;  // int? | 
            var payload = new GenericFeedback(); // GenericFeedback | 

            try
            {
                apiInstance.PostGenericFeedbackContract(modelName, objectId, payload);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ArgoApi.PostGenericFeedbackContract: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelName** | **string**|  | 
 **objectId** | **int?**|  | 
 **payload** | [**GenericFeedback**](GenericFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postgraderfeedbackdao"></a>
# **PostGraderFeedbackDao**
> void PostGraderFeedbackDao (int? graderId, GraderFeedback payload)



Update the grader details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostGraderFeedbackDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ArgoApi();
            var graderId = 56;  // int? | 
            var payload = new GraderFeedback(); // GraderFeedback | 

            try
            {
                apiInstance.PostGraderFeedbackDao(graderId, payload);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ArgoApi.PostGraderFeedbackDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **graderId** | **int?**|  | 
 **payload** | [**GraderFeedback**](GraderFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="postsubmissionfeedbackdao"></a>
# **PostSubmissionFeedbackDao**
> void PostSubmissionFeedbackDao (int? submissionId, SubmissionFeedback payload)



Update the submission details

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostSubmissionFeedbackDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ArgoApi();
            var submissionId = 56;  // int? | 
            var payload = new SubmissionFeedback(); // SubmissionFeedback | 

            try
            {
                apiInstance.PostSubmissionFeedbackDao(submissionId, payload);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ArgoApi.PostSubmissionFeedbackDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submissionId** | **int?**|  | 
 **payload** | [**SubmissionFeedback**](SubmissionFeedback.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

