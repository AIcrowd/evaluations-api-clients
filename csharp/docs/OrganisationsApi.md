# Com.AIcrowd.Evaluations.Api.OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateOrganisation**](OrganisationsApi.md#createorganisation) | **POST** /organisations/ | 
[**DeleteOrganisation**](OrganisationsApi.md#deleteorganisation) | **DELETE** /organisations/{organisation_id} | 
[**GetOrganisation**](OrganisationsApi.md#getorganisation) | **GET** /organisations/{organisation_id} | 
[**ListOrganisations**](OrganisationsApi.md#listorganisations) | **GET** /organisations/ | 
[**UpdateOrganisation**](OrganisationsApi.md#updateorganisation) | **PUT** /organisations/{organisation_id} | 
[**UpdateOrganisationQuota**](OrganisationsApi.md#updateorganisationquota) | **PUT** /organisations/{organisation_id}/addquota | 


<a name="createorganisation"></a>
# **CreateOrganisation**
> Organisation CreateOrganisation (Organisation payload, string xFields = null)



Create a new organisation

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class CreateOrganisationExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var payload = new Organisation(); // Organisation | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Organisation result = apiInstance.CreateOrganisation(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.CreateOrganisation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deleteorganisation"></a>
# **DeleteOrganisation**
> void DeleteOrganisation (int? organisationId)



Delete an Organisation

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class DeleteOrganisationExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | 

            try
            {
                apiInstance.DeleteOrganisation(organisationId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.DeleteOrganisation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisation"></a>
# **GetOrganisation**
> Organisation GetOrganisation (int? organisationId, string xFields = null)



Get details of an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetOrganisationExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Organisation result = apiInstance.GetOrganisation(organisationId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.GetOrganisation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listorganisations"></a>
# **ListOrganisations**
> List<Organisation> ListOrganisations (string xFields = null)



List all organisations

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class ListOrganisationsExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;Organisation&gt; result = apiInstance.ListOrganisations(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.ListOrganisations: " + e.Message );
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

[**List<Organisation>**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateorganisation"></a>
# **UpdateOrganisation**
> Organisation UpdateOrganisation (int? organisationId, Organisation payload, string xFields = null)



Update an Organisation

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class UpdateOrganisationExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | 
            var payload = new Organisation(); // Organisation | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Organisation result = apiInstance.UpdateOrganisation(organisationId, payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.UpdateOrganisation: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**|  | 
 **payload** | [**Organisation**](Organisation.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="updateorganisationquota"></a>
# **UpdateOrganisationQuota**
> void UpdateOrganisationQuota (int? organisationId, OrganisationQuota payload)



Add or subtract quota for an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class UpdateOrganisationQuotaExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | 
            var payload = new OrganisationQuota(); // OrganisationQuota | 

            try
            {
                apiInstance.UpdateOrganisationQuota(organisationId, payload);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.UpdateOrganisationQuota: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**|  | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

