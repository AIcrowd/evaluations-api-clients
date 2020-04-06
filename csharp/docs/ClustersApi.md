# Com.AIcrowd.Evaluations.Api.ClustersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateCluster**](ClustersApi.md#createcluster) | **POST** /clusters/ | 
[**DeleteCluster**](ClustersApi.md#deletecluster) | **DELETE** /clusters/{cluster_id} | 
[**GetCluster**](ClustersApi.md#getcluster) | **GET** /clusters/{cluster_id} | 
[**ListClusters**](ClustersApi.md#listclusters) | **GET** /clusters/ | 


<a name="createcluster"></a>
# **CreateCluster**
> Cluster CreateCluster (Cluster payload, string xFields = null)



Add a new cluster to AIcrowd and install necessary dependencies

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class CreateClusterExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ClustersApi();
            var payload = new Cluster(); // Cluster | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Cluster result = apiInstance.CreateCluster(payload, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ClustersApi.CreateCluster: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Cluster**](Cluster.md)|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="deletecluster"></a>
# **DeleteCluster**
> void DeleteCluster (int? clusterId)



Delete a cluster by its ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class DeleteClusterExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ClustersApi();
            var clusterId = 56;  // int? | 

            try
            {
                apiInstance.DeleteCluster(clusterId);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ClustersApi.DeleteCluster: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **int?**|  | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getcluster"></a>
# **GetCluster**
> Cluster GetCluster (int? clusterId, string xFields = null)



Get details of a cluster by its ID

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class GetClusterExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ClustersApi();
            var clusterId = 56;  // int? | 
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                Cluster result = apiInstance.GetCluster(clusterId, xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ClustersApi.GetCluster: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clusterId** | **int?**|  | 
 **xFields** | **string**| An optional fields mask | [optional] 

### Return type

[**Cluster**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="listclusters"></a>
# **ListClusters**
> List<Cluster> ListClusters (string xFields = null)



List all clusters available

### Example
```csharp
using System;
using System.Diagnostics;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Example
{
    public class ListClustersExample
    {
        public void main()
        {
            // Configure API key authorization: api_key
            Configuration.Default.AddApiKey("AUTHORIZATION", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // Configuration.Default.AddApiKeyPrefix("AUTHORIZATION", "Bearer");

            var apiInstance = new ClustersApi();
            var xFields = xFields_example;  // string | An optional fields mask (optional) 

            try
            {
                List&lt;Cluster&gt; result = apiInstance.ListClusters(xFields);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ClustersApi.ListClusters: " + e.Message );
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

[**List<Cluster>**](Cluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

