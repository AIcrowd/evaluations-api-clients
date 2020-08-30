# Swagger\Client\GradersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGrader**](GradersApi.md#createGrader) | **POST** /graders/ | 
[**deleteGrader**](GradersApi.md#deleteGrader) | **DELETE** /graders/{grader_id} | 
[**getGrader**](GradersApi.md#getGrader) | **GET** /graders/{grader_id} | 
[**getGraderLogs**](GradersApi.md#getGraderLogs) | **GET** /graders/{grader_id}/logs | 
[**listGraders**](GradersApi.md#listGraders) | **GET** /graders/ | 
[**updateGrader**](GradersApi.md#updateGrader) | **PATCH** /graders/{grader_id} | 


# **createGrader**
> \Swagger\Client\Model\Grader createGrader($payload, $x_fields)



Create a new grader

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\GradersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$payload = new \Swagger\Client\Model\Grader(); // \Swagger\Client\Model\Grader | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->createGrader($payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GradersApi->createGrader: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**\Swagger\Client\Model\Grader**](../Model/Grader.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Grader**](../Model/Grader.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteGrader**
> deleteGrader($grader_id)



Delete a grader by its ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\GradersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$grader_id = 56; // int | 

try {
    $apiInstance->deleteGrader($grader_id);
} catch (Exception $e) {
    echo 'Exception when calling GradersApi->deleteGrader: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getGrader**
> \Swagger\Client\Model\Grader getGrader($grader_id, $x_fields)



Get details of a grader by its ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\GradersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$grader_id = 56; // int | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->getGrader($grader_id, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GradersApi->getGrader: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Grader**](../Model/Grader.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getGraderLogs**
> getGraderLogs($grader_id)



Get the grader logs by submission ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\GradersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$grader_id = 56; // int | 

try {
    $apiInstance->getGraderLogs($grader_id);
} catch (Exception $e) {
    echo 'Exception when calling GradersApi->getGraderLogs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **listGraders**
> \Swagger\Client\Model\Grader[] listGraders($per_page, $page, $meta, $name, $status, $user_id, $x_fields)



List all graders available

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\GradersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$per_page = "per_page_example"; // string | Results to display per page
$page = "page_example"; // string | Page number
$meta = "meta_example"; // string | Fetch graders containing this meta value
$name = "name_example"; // string | Fetch grader containing name
$status = "status_example"; // string | Fetch graders with this status
$user_id = 56; // int | Fetch graders created by the user
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->listGraders($per_page, $page, $meta, $name, $status, $user_id, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GradersApi->listGraders: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **string**| Results to display per page | [optional]
 **page** | **string**| Page number | [optional]
 **meta** | **string**| Fetch graders containing this meta value | [optional]
 **name** | **string**| Fetch grader containing name | [optional]
 **status** | **string**| Fetch graders with this status | [optional]
 **user_id** | **int**| Fetch graders created by the user | [optional]
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Grader[]**](../Model/Grader.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateGrader**
> \Swagger\Client\Model\Grader updateGrader($grader_id, $payload, $x_fields)



Update meta details of a grader by its ID. Warning: There is no data validation.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\GradersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$grader_id = 56; // int | 
$payload = new \Swagger\Client\Model\GraderMeta(); // \Swagger\Client\Model\GraderMeta | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->updateGrader($grader_id, $payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GradersApi->updateGrader: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  |
 **payload** | [**\Swagger\Client\Model\GraderMeta**](../Model/GraderMeta.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Grader**](../Model/Grader.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

