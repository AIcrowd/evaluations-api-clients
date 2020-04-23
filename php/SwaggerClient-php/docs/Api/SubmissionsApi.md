# Swagger\Client\SubmissionsApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubmission**](SubmissionsApi.md#createSubmission) | **POST** /submissions/ | 
[**deleteSubmission**](SubmissionsApi.md#deleteSubmission) | **DELETE** /submissions/{submission_id} | 
[**getSubmission**](SubmissionsApi.md#getSubmission) | **GET** /submissions/{submission_id} | 
[**getSubmissionData**](SubmissionsApi.md#getSubmissionData) | **GET** /submissions/{submission_id}/data | 
[**getSubmissionLogs**](SubmissionsApi.md#getSubmissionLogs) | **GET** /submissions/{submission_id}/logs | 
[**listSubmissions**](SubmissionsApi.md#listSubmissions) | **GET** /submissions/ | 


# **createSubmission**
> \Swagger\Client\Model\Submissions createSubmission($payload, $x_fields)



Make a new submission

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\SubmissionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$payload = new \Swagger\Client\Model\Submissions(); // \Swagger\Client\Model\Submissions | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->createSubmission($payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubmissionsApi->createSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**\Swagger\Client\Model\Submissions**](../Model/Submissions.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Submissions**](../Model/Submissions.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteSubmission**
> deleteSubmission($submission_id)



Stop evaluation of a submission and delete it

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\SubmissionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$submission_id = 56; // int | 

try {
    $apiInstance->deleteSubmission($submission_id);
} catch (Exception $e) {
    echo 'Exception when calling SubmissionsApi->deleteSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSubmission**
> \Swagger\Client\Model\Submissions getSubmission($submission_id, $x_fields)



Get details of a submission by its ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\SubmissionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$submission_id = 56; // int | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->getSubmission($submission_id, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubmissionsApi->getSubmission: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Submissions**](../Model/Submissions.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSubmissionData**
> getSubmissionData($submission_id)



Get the submission data by submission ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\SubmissionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$submission_id = 56; // int | 

try {
    $apiInstance->getSubmissionData($submission_id);
} catch (Exception $e) {
    echo 'Exception when calling SubmissionsApi->getSubmissionData: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getSubmissionLogs**
> getSubmissionLogs($submission_id)



Get the submission logs by submission ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\SubmissionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$submission_id = 56; // int | 

try {
    $apiInstance->getSubmissionLogs($submission_id);
} catch (Exception $e) {
    echo 'Exception when calling SubmissionsApi->getSubmissionLogs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **listSubmissions**
> \Swagger\Client\Model\Submissions[] listSubmissions($meta, $status, $user_id, $x_fields)



List all submissions available

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\SubmissionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$meta = "meta_example"; // string | Fetch submissions with this meta value
$status = "status_example"; // string | Fetch submissions with this status
$user_id = 56; // int | Fetch submissions created by the user
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->listSubmissions($meta, $status, $user_id, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SubmissionsApi->listSubmissions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta** | **string**| Fetch submissions with this meta value | [optional]
 **status** | **string**| Fetch submissions with this status | [optional]
 **user_id** | **int**| Fetch submissions created by the user | [optional]
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\Submissions[]**](../Model/Submissions.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

