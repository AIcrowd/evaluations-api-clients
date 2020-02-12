# Swagger\Client\UsersApi

All URIs are relative to *https://localhost/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserDao**](UsersApi.md#deleteUserDao) | **DELETE** /users/{user_id} | 
[**getUserDao**](UsersApi.md#getUserDao) | **GET** /users/{user_id} | 
[**getUserListDao**](UsersApi.md#getUserListDao) | **GET** /users/ | 
[**postUserListDao**](UsersApi.md#postUserListDao) | **POST** /users/ | 
[**putQuotaDao**](UsersApi.md#putQuotaDao) | **PUT** /users/addquota/{user_id} | 
[**putUserDao**](UsersApi.md#putUserDao) | **PUT** /users/{user_id} | 


# **deleteUserDao**
> deleteUserDao($user_id)



Delete a user

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 56; // int | User identifier

try {
    $apiInstance->deleteUserDao($user_id);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->deleteUserDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUserDao**
> \Swagger\Client\Model\User getUserDao($user_id, $x_fields)



Get information of a user

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 56; // int | User identifier
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->getUserDao($user_id, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->getUserDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\User**](../Model/User.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getUserListDao**
> \Swagger\Client\Model\User[] getUserListDao($x_fields)



Get all user

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->getUserListDao($x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->getUserListDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\User[]**](../Model/User.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postUserListDao**
> \Swagger\Client\Model\User postUserListDao($payload, $x_fields)



Create a new user

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$payload = new \Swagger\Client\Model\User(); // \Swagger\Client\Model\User | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->postUserListDao($payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->postUserListDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**\Swagger\Client\Model\User**](../Model/User.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\User**](../Model/User.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putQuotaDao**
> putQuotaDao($user_id, $payload)



Add or subtract quota for a user

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 56; // int | User identifier
$payload = new \Swagger\Client\Model\UserQuota(); // \Swagger\Client\Model\UserQuota | 

try {
    $apiInstance->putQuotaDao($user_id, $payload);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->putQuotaDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier |
 **payload** | [**\Swagger\Client\Model\UserQuota**](../Model/UserQuota.md)|  |

### Return type

void (empty response body)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putUserDao**
> \Swagger\Client\Model\User putUserDao($user_id, $payload, $x_fields)



Update a user

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: api_key
$config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('AUTHORIZATION', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('AUTHORIZATION', 'Bearer');

$apiInstance = new Swagger\Client\Api\UsersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$user_id = 56; // int | User identifier
$payload = new \Swagger\Client\Model\User(); // \Swagger\Client\Model\User | 
$x_fields = "x_fields_example"; // string | An optional fields mask

try {
    $result = $apiInstance->putUserDao($user_id, $payload, $x_fields);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UsersApi->putUserDao: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**| User identifier |
 **payload** | [**\Swagger\Client\Model\User**](../Model/User.md)|  |
 **x_fields** | **string**| An optional fields mask | [optional]

### Return type

[**\Swagger\Client\Model\User**](../Model/User.md)

### Authorization

[api_key](../../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

