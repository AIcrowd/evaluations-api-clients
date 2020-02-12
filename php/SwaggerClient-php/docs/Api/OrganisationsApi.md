# Swagger\Client\OrganisationsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOrganisationDao**](OrganisationsApi.md#deleteOrganisationDao) | **DELETE** /organisations/{organisation_id} | 
[**getOrganisationDao**](OrganisationsApi.md#getOrganisationDao) | **GET** /organisations/{organisation_id} | 
[**getOrganisationListDao**](OrganisationsApi.md#getOrganisationListDao) | **GET** /organisations/ | 
[**postOrganisationListDao**](OrganisationsApi.md#postOrganisationListDao) | **POST** /organisations/ | 
[**putOrganisationDao**](OrganisationsApi.md#putOrganisationDao) | **PUT** /organisations/{organisation_id} | 
[**putQuotaDao**](OrganisationsApi.md#putQuotaDao) | **PUT** /organisations/addquota/{organisation_id} | 


# **deleteOrganisationDao**
> deleteOrganisationDao($organisation_id)



Delete an Organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\OrganisationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organisation_id = 56; // int | Organisation identifier

try {
    $apiInstance->deleteOrganisationDao($organisation_id);
} catch (Exception $e) {
    echo 'Exception when calling OrganisationsApi->deleteOrganisationDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getOrganisationDao**
> \Swagger\Client\Model\Organisation getOrganisationDao($organisation_id, $x_fields)



Get information of an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\OrganisationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organisation_id = 56; // int | Organisation identifier
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->getOrganisationDao($organisation_id, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganisationsApi->getOrganisationDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Organisation**](../Model/Organisation.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getOrganisationListDao**
> \Swagger\Client\Model\Organisation[] getOrganisationListDao($x_fields)



Get all organisations

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\OrganisationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->getOrganisationListDao($x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganisationsApi->getOrganisationListDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Organisation[]**](../Model/Organisation.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postOrganisationListDao**
> \Swagger\Client\Model\Organisation postOrganisationListDao($payload, $x_fields)



Create a new organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\OrganisationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$payload = new \Swagger\Client\Model\Organisation(); // \Swagger\Client\Model\Organisation | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->postOrganisationListDao($payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganisationsApi->postOrganisationListDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**\Swagger\Client\Model\Organisation**](../Model/Organisation.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Organisation**](../Model/Organisation.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putOrganisationDao**
> \Swagger\Client\Model\Organisation putOrganisationDao($organisation_id, $payload, $x_fields)



Update an Organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\OrganisationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organisation_id = 56; // int | Organisation identifier
$payload = new \Swagger\Client\Model\Organisation(); // \Swagger\Client\Model\Organisation | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->putOrganisationDao($organisation_id, $payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrganisationsApi->putOrganisationDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier |
 **payload** | [**\Swagger\Client\Model\Organisation**](../Model/Organisation.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Organisation**](../Model/Organisation.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putQuotaDao**
> putQuotaDao($organisation_id, $payload)



Add or subtract quota for an organisation

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\OrganisationsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$organisation_id = 56; // int | Organisation identifier
$payload = new \Swagger\Client\Model\OrganisationQuota(); // \Swagger\Client\Model\OrganisationQuota | 

try {
    $apiInstance->putQuotaDao($organisation_id, $payload);
} catch (Exception $e) {
    echo 'Exception when calling OrganisationsApi->putQuotaDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation_id** | **int**| Organisation identifier |
 **payload** | [**\Swagger\Client\Model\OrganisationQuota**](../Model/OrganisationQuota.md)|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

