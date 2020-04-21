# OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrganisation**](OrganisationsApi.md#createOrganisation) | **POST** /organisations/ | 
[**deleteOrganisation**](OrganisationsApi.md#deleteOrganisation) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisation**](OrganisationsApi.md#getOrganisation) | **GET** /organisations/{organisation_id} | 
[**listOrganisations**](OrganisationsApi.md#listOrganisations) | **GET** /organisations/ | 
[**updateOrganisation**](OrganisationsApi.md#updateOrganisation) | **PUT** /organisations/{organisation_id} | 
[**updateOrganisationQuota**](OrganisationsApi.md#updateOrganisationQuota) | **PUT** /organisations/{organisation_id}/addquota | 


<a name="createOrganisation"></a>
# **createOrganisation**
> Organisation createOrganisation(payload, xFields)



Create a new organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val payload : Organisation =  // Organisation | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Organisation = apiInstance.createOrganisation(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#createOrganisation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#createOrganisation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**Organisation**](Organisation.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteOrganisation"></a>
# **deleteOrganisation**
> deleteOrganisation(organisationId)



Delete an Organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | 
try {
    apiInstance.deleteOrganisation(organisationId)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#deleteOrganisation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#deleteOrganisation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organisationId, xFields)



Get details of an organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Organisation = apiInstance.getOrganisation(organisationId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#getOrganisation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#getOrganisation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="listOrganisations"></a>
# **listOrganisations**
> kotlin.Array&lt;Organisation&gt; listOrganisations(xFields)



List all organisations

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Organisation> = apiInstance.listOrganisations(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#listOrganisations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#listOrganisations")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**kotlin.Array&lt;Organisation&gt;**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateOrganisation"></a>
# **updateOrganisation**
> Organisation updateOrganisation(organisationId, payload, xFields)



Update an Organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | 
val payload : Organisation =  // Organisation | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Organisation = apiInstance.updateOrganisation(organisationId, payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#updateOrganisation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#updateOrganisation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**|  |
 **payload** | [**Organisation**](Organisation.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateOrganisationQuota"></a>
# **updateOrganisationQuota**
> updateOrganisationQuota(organisationId, payload)



Add or subtract quota for an organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | 
val payload : OrganisationQuota =  // OrganisationQuota | 
try {
    apiInstance.updateOrganisationQuota(organisationId, payload)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#updateOrganisationQuota")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#updateOrganisationQuota")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**|  |
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

