# OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOrganisationDao**](OrganisationsApi.md#deleteOrganisationDao) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisationDao**](OrganisationsApi.md#getOrganisationDao) | **GET** /organisations/{organisation_id} | 
[**getOrganisationListDao**](OrganisationsApi.md#getOrganisationListDao) | **GET** /organisations/ | 
[**postOrganisationListDao**](OrganisationsApi.md#postOrganisationListDao) | **POST** /organisations/ | 
[**putOrganisationDao**](OrganisationsApi.md#putOrganisationDao) | **PUT** /organisations/{organisation_id} | 
[**putQuotaDao**](OrganisationsApi.md#putQuotaDao) | **PUT** /organisations/addquota/{organisation_id} | 


<a name="deleteOrganisationDao"></a>
# **deleteOrganisationDao**
> deleteOrganisationDao(organisationId)



Delete an Organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | Organisation identifier
try {
    apiInstance.deleteOrganisationDao(organisationId)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#deleteOrganisationDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#deleteOrganisationDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**| Organisation identifier |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisationDao"></a>
# **getOrganisationDao**
> Organisation getOrganisationDao(organisationId, xFields)



Get information of an organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | Organisation identifier
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Organisation = apiInstance.getOrganisationDao(organisationId, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#getOrganisationDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#getOrganisationDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**| Organisation identifier |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisationListDao"></a>
# **getOrganisationListDao**
> kotlin.Array&lt;Organisation&gt; getOrganisationListDao(xFields)



Get all organisations

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : kotlin.Array<Organisation> = apiInstance.getOrganisationListDao(xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#getOrganisationListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#getOrganisationListDao")
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

<a name="postOrganisationListDao"></a>
# **postOrganisationListDao**
> Organisation postOrganisationListDao(payload, xFields)



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
    val result : Organisation = apiInstance.postOrganisationListDao(payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#postOrganisationListDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#postOrganisationListDao")
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

<a name="putOrganisationDao"></a>
# **putOrganisationDao**
> Organisation putOrganisationDao(organisationId, payload, xFields)



Update an Organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | Organisation identifier
val payload : Organisation =  // Organisation | 
val xFields : kotlin.String = xFields_example // kotlin.String | An optional fields mask
try {
    val result : Organisation = apiInstance.putOrganisationDao(organisationId, payload, xFields)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#putOrganisationDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#putOrganisationDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**| Organisation identifier |
 **payload** | [**Organisation**](Organisation.md)|  |
 **xFields** | **kotlin.String**| An optional fields mask | [optional]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putQuotaDao"></a>
# **putQuotaDao**
> putQuotaDao(organisationId, payload)



Add or subtract quota for an organisation

### Example
```kotlin
// Import classes:
//import com.aicrowd.evaluations.infrastructure.*
//import com.aicrowd.evaluations.models.*

val apiInstance = OrganisationsApi()
val organisationId : kotlin.Int = 56 // kotlin.Int | Organisation identifier
val payload : OrganisationQuota =  // OrganisationQuota | 
try {
    apiInstance.putQuotaDao(organisationId, payload)
} catch (e: ClientException) {
    println("4xx response calling OrganisationsApi#putQuotaDao")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrganisationsApi#putQuotaDao")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationId** | **kotlin.Int**| Organisation identifier |
 **payload** | [**OrganisationQuota**](OrganisationQuota.md)|  |

### Return type

null (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

