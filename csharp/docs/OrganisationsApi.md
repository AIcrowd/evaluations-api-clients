# IO.Swagger.Api.OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteOrganisationDao**](OrganisationsApi.md#deleteorganisationdao) | **DELETE** /organisations/{organisation_id} | 
[**GetOrganisationDao**](OrganisationsApi.md#getorganisationdao) | **GET** /organisations/{organisation_id} | 
[**GetOrganisationListDao**](OrganisationsApi.md#getorganisationlistdao) | **GET** /organisations/ | 
[**PostOrganisationListDao**](OrganisationsApi.md#postorganisationlistdao) | **POST** /organisations/ | 
[**PutOrganisationDao**](OrganisationsApi.md#putorganisationdao) | **PUT** /organisations/{organisation_id} | 
[**PutQuotaDao**](OrganisationsApi.md#putquotadao) | **PUT** /organisations/addquota/{organisation_id} | 


<a name="deleteorganisationdao"></a>
# **DeleteOrganisationDao**
> void DeleteOrganisationDao (int? organisationId)



Delete an Organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class DeleteOrganisationDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | Organisation identifier

            try
            {
                apiInstance.DeleteOrganisationDao(organisationId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.DeleteOrganisationDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**| Organisation identifier | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisationdao"></a>
# **GetOrganisationDao**
> Organisation GetOrganisationDao (int? organisationId, string xFields = null)



Get information of an organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrganisationDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | Organisation identifier
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Organisation result = apiInstance.GetOrganisationDao(organisationId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.GetOrganisationDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**| Organisation identifier | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getorganisationlistdao"></a>
# **GetOrganisationListDao**
> List<Organisation> GetOrganisationListDao (string xFields = null)



Get all organisations

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetOrganisationListDaoExample
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
                List&lt;Organisation&gt; result = apiInstance.GetOrganisationListDao(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.GetOrganisationListDao: " + e.Message );
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

<a name="postorganisationlistdao"></a>
# **PostOrganisationListDao**
> Organisation PostOrganisationListDao (Organisation payload, string xFields = null)



Create a new organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PostOrganisationListDaoExample
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
                Organisation result = apiInstance.PostOrganisationListDao(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.PostOrganisationListDao: " + e.Message );
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

<a name="putorganisationdao"></a>
# **PutOrganisationDao**
> Organisation PutOrganisationDao (int? organisationId, Organisation payload, string xFields = null)



Update an Organisation

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class PutOrganisationDaoExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | Organisation identifier
            var payload = new Organisation(); // Organisation | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Organisation result = apiInstance.PutOrganisationDao(organisationId, payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.PutOrganisationDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**| Organisation identifier | 
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

<a name="putquotadao"></a>
# **PutQuotaDao**
> void PutQuotaDao (int? organisationId, OrganisationQuota payload)



Add or subtract quota for an organisation

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

            var apiInstance = new OrganisationsApi();
            var organisationId = 56;  // int? | Organisation identifier
            var payload = new OrganisationQuota(); // OrganisationQuota | 

            try
            {
                apiInstance.PutQuotaDao(organisationId, payload);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OrganisationsApi.PutQuotaDao: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **int?**| Organisation identifier | 
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

