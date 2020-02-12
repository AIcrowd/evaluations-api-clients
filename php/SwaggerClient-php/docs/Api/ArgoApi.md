# Swagger\Client\ArgoApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postGenericFeedbackContract**](ArgoApi.md#postGenericFeedbackContract) | **POST** /argo/{model_name}/{object_id} | 
[**postGraderFeedbackDao**](ArgoApi.md#postGraderFeedbackDao) | **POST** /argo/graders/{grader_id} | 
[**postSubmissionFeedbackDao**](ArgoApi.md#postSubmissionFeedbackDao) | **POST** /argo/submissions/{submission_id} | 


# **postGenericFeedbackContract**
> postGenericFeedbackContract($model_name, $object_id, $payload)



Update the status of an object

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\ArgoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$model_name = "model_name_example"; // string | 
$object_id = 56; // int | 
$payload = new \Swagger\Client\Model\GenericFeedback(); // \Swagger\Client\Model\GenericFeedback | 

try {
    $apiInstance->postGenericFeedbackContract($model_name, $object_id, $payload);
} catch (Exception $e) {
    echo 'Exception when calling ArgoApi->postGenericFeedbackContract: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_name** | **string**|  |
 **object_id** | **int**|  |
 **payload** | [**\Swagger\Client\Model\GenericFeedback**](../Model/GenericFeedback.md)|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postGraderFeedbackDao**
> postGraderFeedbackDao($grader_id, $payload)



Update the grader details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\ArgoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$grader_id = 56; // int | 
$payload = new \Swagger\Client\Model\GraderFeedback(); // \Swagger\Client\Model\GraderFeedback | 

try {
    $apiInstance->postGraderFeedbackDao($grader_id, $payload);
} catch (Exception $e) {
    echo 'Exception when calling ArgoApi->postGraderFeedbackDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grader_id** | **int**|  |
 **payload** | [**\Swagger\Client\Model\GraderFeedback**](../Model/GraderFeedback.md)|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postSubmissionFeedbackDao**
> postSubmissionFeedbackDao($submission_id, $payload)



Update the submission details

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\ArgoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$submission_id = 56; // int | 
$payload = new \Swagger\Client\Model\SubmissionFeedback(); // \Swagger\Client\Model\SubmissionFeedback | 

try {
    $apiInstance->postSubmissionFeedbackDao($submission_id, $payload);
} catch (Exception $e) {
    echo 'Exception when calling ArgoApi->postSubmissionFeedbackDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **int**|  |
 **payload** | [**\Swagger\Client\Model\SubmissionFeedback**](../Model/SubmissionFeedback.md)|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

