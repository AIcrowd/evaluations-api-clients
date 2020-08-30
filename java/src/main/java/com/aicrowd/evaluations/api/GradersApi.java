/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package com.aicrowd.evaluations.api;

import com.aicrowd.evaluations.ApiCallback;
import com.aicrowd.evaluations.ApiClient;
import com.aicrowd.evaluations.ApiException;
import com.aicrowd.evaluations.ApiResponse;
import com.aicrowd.evaluations.Configuration;
import com.aicrowd.evaluations.Pair;
import com.aicrowd.evaluations.ProgressRequestBody;
import com.aicrowd.evaluations.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import com.aicrowd.evaluations.models.Grader;
import com.aicrowd.evaluations.models.GraderMeta;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GradersApi {
    private ApiClient apiClient;

    public GradersApi() {
        this(Configuration.getDefaultApiClient());
    }

    public GradersApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for createGrader
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call createGraderCall(Grader payload, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = payload;

        // create path and map variables
        String localVarPath = "/graders/";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        if (xFields != null)
        localVarHeaderParams.put("X-Fields", apiClient.parameterToString(xFields));

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "POST", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call createGraderValidateBeforeCall(Grader payload, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'payload' is set
        if (payload == null) {
            throw new ApiException("Missing the required parameter 'payload' when calling createGrader(Async)");
        }
        

        com.squareup.okhttp.Call call = createGraderCall(payload, xFields, progressListener, progressRequestListener);
        return call;

    }

    /**
     * 
     * Create a new grader
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @return Grader
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Grader createGrader(Grader payload, String xFields) throws ApiException {
        ApiResponse<Grader> resp = createGraderWithHttpInfo(payload, xFields);
        return resp.getData();
    }

    /**
     * 
     * Create a new grader
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @return ApiResponse&lt;Grader&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Grader> createGraderWithHttpInfo(Grader payload, String xFields) throws ApiException {
        com.squareup.okhttp.Call call = createGraderValidateBeforeCall(payload, xFields, null, null);
        Type localVarReturnType = new TypeToken<Grader>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     *  (asynchronously)
     * Create a new grader
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call createGraderAsync(Grader payload, String xFields, final ApiCallback<Grader> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = createGraderValidateBeforeCall(payload, xFields, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<Grader>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for deleteGrader
     * @param graderId  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call deleteGraderCall(Integer graderId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/graders/{grader_id}"
            .replaceAll("\\{" + "grader_id" + "\\}", apiClient.escapeString(graderId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "DELETE", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call deleteGraderValidateBeforeCall(Integer graderId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'graderId' is set
        if (graderId == null) {
            throw new ApiException("Missing the required parameter 'graderId' when calling deleteGrader(Async)");
        }
        

        com.squareup.okhttp.Call call = deleteGraderCall(graderId, progressListener, progressRequestListener);
        return call;

    }

    /**
     * 
     * Delete a grader by its ID
     * @param graderId  (required)
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public void deleteGrader(Integer graderId) throws ApiException {
        deleteGraderWithHttpInfo(graderId);
    }

    /**
     * 
     * Delete a grader by its ID
     * @param graderId  (required)
     * @return ApiResponse&lt;Void&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Void> deleteGraderWithHttpInfo(Integer graderId) throws ApiException {
        com.squareup.okhttp.Call call = deleteGraderValidateBeforeCall(graderId, null, null);
        return apiClient.execute(call);
    }

    /**
     *  (asynchronously)
     * Delete a grader by its ID
     * @param graderId  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call deleteGraderAsync(Integer graderId, final ApiCallback<Void> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = deleteGraderValidateBeforeCall(graderId, progressListener, progressRequestListener);
        apiClient.executeAsync(call, callback);
        return call;
    }
    /**
     * Build call for getGrader
     * @param graderId  (required)
     * @param xFields An optional fields mask (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call getGraderCall(Integer graderId, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/graders/{grader_id}"
            .replaceAll("\\{" + "grader_id" + "\\}", apiClient.escapeString(graderId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        if (xFields != null)
        localVarHeaderParams.put("X-Fields", apiClient.parameterToString(xFields));

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call getGraderValidateBeforeCall(Integer graderId, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'graderId' is set
        if (graderId == null) {
            throw new ApiException("Missing the required parameter 'graderId' when calling getGrader(Async)");
        }
        

        com.squareup.okhttp.Call call = getGraderCall(graderId, xFields, progressListener, progressRequestListener);
        return call;

    }

    /**
     * 
     * Get details of a grader by its ID
     * @param graderId  (required)
     * @param xFields An optional fields mask (optional)
     * @return Grader
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Grader getGrader(Integer graderId, String xFields) throws ApiException {
        ApiResponse<Grader> resp = getGraderWithHttpInfo(graderId, xFields);
        return resp.getData();
    }

    /**
     * 
     * Get details of a grader by its ID
     * @param graderId  (required)
     * @param xFields An optional fields mask (optional)
     * @return ApiResponse&lt;Grader&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Grader> getGraderWithHttpInfo(Integer graderId, String xFields) throws ApiException {
        com.squareup.okhttp.Call call = getGraderValidateBeforeCall(graderId, xFields, null, null);
        Type localVarReturnType = new TypeToken<Grader>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     *  (asynchronously)
     * Get details of a grader by its ID
     * @param graderId  (required)
     * @param xFields An optional fields mask (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call getGraderAsync(Integer graderId, String xFields, final ApiCallback<Grader> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = getGraderValidateBeforeCall(graderId, xFields, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<Grader>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for getGraderLogs
     * @param graderId  (required)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call getGraderLogsCall(Integer graderId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/graders/{grader_id}/logs"
            .replaceAll("\\{" + "grader_id" + "\\}", apiClient.escapeString(graderId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call getGraderLogsValidateBeforeCall(Integer graderId, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'graderId' is set
        if (graderId == null) {
            throw new ApiException("Missing the required parameter 'graderId' when calling getGraderLogs(Async)");
        }
        

        com.squareup.okhttp.Call call = getGraderLogsCall(graderId, progressListener, progressRequestListener);
        return call;

    }

    /**
     * 
     * Get the grader logs by submission ID
     * @param graderId  (required)
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public void getGraderLogs(Integer graderId) throws ApiException {
        getGraderLogsWithHttpInfo(graderId);
    }

    /**
     * 
     * Get the grader logs by submission ID
     * @param graderId  (required)
     * @return ApiResponse&lt;Void&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Void> getGraderLogsWithHttpInfo(Integer graderId) throws ApiException {
        com.squareup.okhttp.Call call = getGraderLogsValidateBeforeCall(graderId, null, null);
        return apiClient.execute(call);
    }

    /**
     *  (asynchronously)
     * Get the grader logs by submission ID
     * @param graderId  (required)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call getGraderLogsAsync(Integer graderId, final ApiCallback<Void> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = getGraderLogsValidateBeforeCall(graderId, progressListener, progressRequestListener);
        apiClient.executeAsync(call, callback);
        return call;
    }
    /**
     * Build call for listGraders
     * @param perPage Results to display per page (optional)
     * @param page Page number (optional)
     * @param meta Fetch graders containing this meta value (optional)
     * @param name Fetch grader containing name (optional)
     * @param status Fetch graders with this status (optional)
     * @param userId Fetch graders created by the user (optional)
     * @param xFields An optional fields mask (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call listGradersCall(String perPage, String page, String meta, String name, String status, Integer userId, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/graders/";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (perPage != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("per_page", perPage));
        if (page != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("page", page));
        if (meta != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("meta", meta));
        if (name != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("name", name));
        if (status != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("status", status));
        if (userId != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("user_id", userId));

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        if (xFields != null)
        localVarHeaderParams.put("X-Fields", apiClient.parameterToString(xFields));

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call listGradersValidateBeforeCall(String perPage, String page, String meta, String name, String status, Integer userId, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        

        com.squareup.okhttp.Call call = listGradersCall(perPage, page, meta, name, status, userId, xFields, progressListener, progressRequestListener);
        return call;

    }

    /**
     * 
     * List all graders available
     * @param perPage Results to display per page (optional)
     * @param page Page number (optional)
     * @param meta Fetch graders containing this meta value (optional)
     * @param name Fetch grader containing name (optional)
     * @param status Fetch graders with this status (optional)
     * @param userId Fetch graders created by the user (optional)
     * @param xFields An optional fields mask (optional)
     * @return List&lt;Grader&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public List<Grader> listGraders(String perPage, String page, String meta, String name, String status, Integer userId, String xFields) throws ApiException {
        ApiResponse<List<Grader>> resp = listGradersWithHttpInfo(perPage, page, meta, name, status, userId, xFields);
        return resp.getData();
    }

    /**
     * 
     * List all graders available
     * @param perPage Results to display per page (optional)
     * @param page Page number (optional)
     * @param meta Fetch graders containing this meta value (optional)
     * @param name Fetch grader containing name (optional)
     * @param status Fetch graders with this status (optional)
     * @param userId Fetch graders created by the user (optional)
     * @param xFields An optional fields mask (optional)
     * @return ApiResponse&lt;List&lt;Grader&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<List<Grader>> listGradersWithHttpInfo(String perPage, String page, String meta, String name, String status, Integer userId, String xFields) throws ApiException {
        com.squareup.okhttp.Call call = listGradersValidateBeforeCall(perPage, page, meta, name, status, userId, xFields, null, null);
        Type localVarReturnType = new TypeToken<List<Grader>>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     *  (asynchronously)
     * List all graders available
     * @param perPage Results to display per page (optional)
     * @param page Page number (optional)
     * @param meta Fetch graders containing this meta value (optional)
     * @param name Fetch grader containing name (optional)
     * @param status Fetch graders with this status (optional)
     * @param userId Fetch graders created by the user (optional)
     * @param xFields An optional fields mask (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call listGradersAsync(String perPage, String page, String meta, String name, String status, Integer userId, String xFields, final ApiCallback<List<Grader>> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = listGradersValidateBeforeCall(perPage, page, meta, name, status, userId, xFields, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<List<Grader>>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for updateGrader
     * @param graderId  (required)
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call updateGraderCall(Integer graderId, GraderMeta payload, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = payload;

        // create path and map variables
        String localVarPath = "/graders/{grader_id}"
            .replaceAll("\\{" + "grader_id" + "\\}", apiClient.escapeString(graderId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        if (xFields != null)
        localVarHeaderParams.put("X-Fields", apiClient.parameterToString(xFields));

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            "application/json"
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "api_key" };
        return apiClient.buildCall(localVarPath, "PATCH", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }

    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call updateGraderValidateBeforeCall(Integer graderId, GraderMeta payload, String xFields, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        
        // verify the required parameter 'graderId' is set
        if (graderId == null) {
            throw new ApiException("Missing the required parameter 'graderId' when calling updateGrader(Async)");
        }
        
        // verify the required parameter 'payload' is set
        if (payload == null) {
            throw new ApiException("Missing the required parameter 'payload' when calling updateGrader(Async)");
        }
        

        com.squareup.okhttp.Call call = updateGraderCall(graderId, payload, xFields, progressListener, progressRequestListener);
        return call;

    }

    /**
     * 
     * Update meta details of a grader by its ID. Warning: There is no data validation.
     * @param graderId  (required)
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @return Grader
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public Grader updateGrader(Integer graderId, GraderMeta payload, String xFields) throws ApiException {
        ApiResponse<Grader> resp = updateGraderWithHttpInfo(graderId, payload, xFields);
        return resp.getData();
    }

    /**
     * 
     * Update meta details of a grader by its ID. Warning: There is no data validation.
     * @param graderId  (required)
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @return ApiResponse&lt;Grader&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<Grader> updateGraderWithHttpInfo(Integer graderId, GraderMeta payload, String xFields) throws ApiException {
        com.squareup.okhttp.Call call = updateGraderValidateBeforeCall(graderId, payload, xFields, null, null);
        Type localVarReturnType = new TypeToken<Grader>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     *  (asynchronously)
     * Update meta details of a grader by its ID. Warning: There is no data validation.
     * @param graderId  (required)
     * @param payload  (required)
     * @param xFields An optional fields mask (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call updateGraderAsync(Integer graderId, GraderMeta payload, String xFields, final ApiCallback<Grader> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = updateGraderValidateBeforeCall(graderId, payload, xFields, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<Grader>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}
