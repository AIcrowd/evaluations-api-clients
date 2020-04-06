/* 
 * AIcrowd Evaluations API
 *
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using RestSharp;
using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Model;

namespace Com.AIcrowd.Evaluations.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IArgoApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the status of an object
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns></returns>
        void PostGenericFeedbackContract (string modelName, int? objectId, GenericFeedback payload);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the status of an object
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> PostGenericFeedbackContractWithHttpInfo (string modelName, int? objectId, GenericFeedback payload);
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the grader details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns></returns>
        void PostGraderFeedbackDao (int? graderId, GraderFeedback payload);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the grader details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> PostGraderFeedbackDaoWithHttpInfo (int? graderId, GraderFeedback payload);
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the submission details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns></returns>
        void PostSubmissionFeedbackDao (int? submissionId, SubmissionFeedback payload);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the submission details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns>ApiResponse of Object(void)</returns>
        ApiResponse<Object> PostSubmissionFeedbackDaoWithHttpInfo (int? submissionId, SubmissionFeedback payload);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the status of an object
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task PostGenericFeedbackContractAsync (string modelName, int? objectId, GenericFeedback payload);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the status of an object
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> PostGenericFeedbackContractAsyncWithHttpInfo (string modelName, int? objectId, GenericFeedback payload);
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the grader details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task PostGraderFeedbackDaoAsync (int? graderId, GraderFeedback payload);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the grader details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> PostGraderFeedbackDaoAsyncWithHttpInfo (int? graderId, GraderFeedback payload);
        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the submission details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of void</returns>
        System.Threading.Tasks.Task PostSubmissionFeedbackDaoAsync (int? submissionId, SubmissionFeedback payload);

        /// <summary>
        /// 
        /// </summary>
        /// <remarks>
        /// Update the submission details
        /// </remarks>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of ApiResponse</returns>
        System.Threading.Tasks.Task<ApiResponse<Object>> PostSubmissionFeedbackDaoAsyncWithHttpInfo (int? submissionId, SubmissionFeedback payload);
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public partial class ArgoApi : IArgoApi
    {
        private Com.AIcrowd.Evaluations.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="ArgoApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ArgoApi(String basePath)
        {
            this.Configuration = new Com.AIcrowd.Evaluations.Client.Configuration { BasePath = basePath };

            ExceptionFactory = Com.AIcrowd.Evaluations.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ArgoApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public ArgoApi(Com.AIcrowd.Evaluations.Client.Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = Com.AIcrowd.Evaluations.Client.Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = Com.AIcrowd.Evaluations.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public Com.AIcrowd.Evaluations.Client.Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public Com.AIcrowd.Evaluations.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public IDictionary<String, String> DefaultHeader()
        {
            return new ReadOnlyDictionary<string, string>(this.Configuration.DefaultHeader);
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        ///  Update the status of an object
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns></returns>
        public void PostGenericFeedbackContract (string modelName, int? objectId, GenericFeedback payload)
        {
             PostGenericFeedbackContractWithHttpInfo(modelName, objectId, payload);
        }

        /// <summary>
        ///  Update the status of an object
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns>ApiResponse of Object(void)</returns>
        public ApiResponse<Object> PostGenericFeedbackContractWithHttpInfo (string modelName, int? objectId, GenericFeedback payload)
        {
            // verify the required parameter 'modelName' is set
            if (modelName == null)
                throw new ApiException(400, "Missing required parameter 'modelName' when calling ArgoApi->PostGenericFeedbackContract");
            // verify the required parameter 'objectId' is set
            if (objectId == null)
                throw new ApiException(400, "Missing required parameter 'objectId' when calling ArgoApi->PostGenericFeedbackContract");
            // verify the required parameter 'payload' is set
            if (payload == null)
                throw new ApiException(400, "Missing required parameter 'payload' when calling ArgoApi->PostGenericFeedbackContract");

            var localVarPath = "/argo/{model_name}/{object_id}";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (modelName != null) localVarPathParams.Add("model_name", this.Configuration.ApiClient.ParameterToString(modelName)); // path parameter
            if (objectId != null) localVarPathParams.Add("object_id", this.Configuration.ApiClient.ParameterToString(objectId)); // path parameter
            if (payload != null && payload.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(payload); // http body (model) parameter
            }
            else
            {
                localVarPostBody = payload; // byte array
            }

            // authentication (api_key) required
            if (!String.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION")))
            {
                localVarHeaderParams["AUTHORIZATION"] = this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION");
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostGenericFeedbackContract", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

        /// <summary>
        ///  Update the status of an object
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task PostGenericFeedbackContractAsync (string modelName, int? objectId, GenericFeedback payload)
        {
             await PostGenericFeedbackContractAsyncWithHttpInfo(modelName, objectId, payload);

        }

        /// <summary>
        ///  Update the status of an object
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="modelName"></param>
        /// <param name="objectId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<ApiResponse<Object>> PostGenericFeedbackContractAsyncWithHttpInfo (string modelName, int? objectId, GenericFeedback payload)
        {
            // verify the required parameter 'modelName' is set
            if (modelName == null)
                throw new ApiException(400, "Missing required parameter 'modelName' when calling ArgoApi->PostGenericFeedbackContract");
            // verify the required parameter 'objectId' is set
            if (objectId == null)
                throw new ApiException(400, "Missing required parameter 'objectId' when calling ArgoApi->PostGenericFeedbackContract");
            // verify the required parameter 'payload' is set
            if (payload == null)
                throw new ApiException(400, "Missing required parameter 'payload' when calling ArgoApi->PostGenericFeedbackContract");

            var localVarPath = "/argo/{model_name}/{object_id}";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (modelName != null) localVarPathParams.Add("model_name", this.Configuration.ApiClient.ParameterToString(modelName)); // path parameter
            if (objectId != null) localVarPathParams.Add("object_id", this.Configuration.ApiClient.ParameterToString(objectId)); // path parameter
            if (payload != null && payload.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(payload); // http body (model) parameter
            }
            else
            {
                localVarPostBody = payload; // byte array
            }

            // authentication (api_key) required
            if (!String.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION")))
            {
                localVarHeaderParams["AUTHORIZATION"] = this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION");
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostGenericFeedbackContract", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

        /// <summary>
        ///  Update the grader details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns></returns>
        public void PostGraderFeedbackDao (int? graderId, GraderFeedback payload)
        {
             PostGraderFeedbackDaoWithHttpInfo(graderId, payload);
        }

        /// <summary>
        ///  Update the grader details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns>ApiResponse of Object(void)</returns>
        public ApiResponse<Object> PostGraderFeedbackDaoWithHttpInfo (int? graderId, GraderFeedback payload)
        {
            // verify the required parameter 'graderId' is set
            if (graderId == null)
                throw new ApiException(400, "Missing required parameter 'graderId' when calling ArgoApi->PostGraderFeedbackDao");
            // verify the required parameter 'payload' is set
            if (payload == null)
                throw new ApiException(400, "Missing required parameter 'payload' when calling ArgoApi->PostGraderFeedbackDao");

            var localVarPath = "/argo/graders/{grader_id}";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (graderId != null) localVarPathParams.Add("grader_id", this.Configuration.ApiClient.ParameterToString(graderId)); // path parameter
            if (payload != null && payload.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(payload); // http body (model) parameter
            }
            else
            {
                localVarPostBody = payload; // byte array
            }

            // authentication (api_key) required
            if (!String.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION")))
            {
                localVarHeaderParams["AUTHORIZATION"] = this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION");
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostGraderFeedbackDao", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

        /// <summary>
        ///  Update the grader details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task PostGraderFeedbackDaoAsync (int? graderId, GraderFeedback payload)
        {
             await PostGraderFeedbackDaoAsyncWithHttpInfo(graderId, payload);

        }

        /// <summary>
        ///  Update the grader details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="graderId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<ApiResponse<Object>> PostGraderFeedbackDaoAsyncWithHttpInfo (int? graderId, GraderFeedback payload)
        {
            // verify the required parameter 'graderId' is set
            if (graderId == null)
                throw new ApiException(400, "Missing required parameter 'graderId' when calling ArgoApi->PostGraderFeedbackDao");
            // verify the required parameter 'payload' is set
            if (payload == null)
                throw new ApiException(400, "Missing required parameter 'payload' when calling ArgoApi->PostGraderFeedbackDao");

            var localVarPath = "/argo/graders/{grader_id}";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (graderId != null) localVarPathParams.Add("grader_id", this.Configuration.ApiClient.ParameterToString(graderId)); // path parameter
            if (payload != null && payload.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(payload); // http body (model) parameter
            }
            else
            {
                localVarPostBody = payload; // byte array
            }

            // authentication (api_key) required
            if (!String.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION")))
            {
                localVarHeaderParams["AUTHORIZATION"] = this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION");
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostGraderFeedbackDao", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

        /// <summary>
        ///  Update the submission details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns></returns>
        public void PostSubmissionFeedbackDao (int? submissionId, SubmissionFeedback payload)
        {
             PostSubmissionFeedbackDaoWithHttpInfo(submissionId, payload);
        }

        /// <summary>
        ///  Update the submission details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns>ApiResponse of Object(void)</returns>
        public ApiResponse<Object> PostSubmissionFeedbackDaoWithHttpInfo (int? submissionId, SubmissionFeedback payload)
        {
            // verify the required parameter 'submissionId' is set
            if (submissionId == null)
                throw new ApiException(400, "Missing required parameter 'submissionId' when calling ArgoApi->PostSubmissionFeedbackDao");
            // verify the required parameter 'payload' is set
            if (payload == null)
                throw new ApiException(400, "Missing required parameter 'payload' when calling ArgoApi->PostSubmissionFeedbackDao");

            var localVarPath = "/argo/submissions/{submission_id}";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (submissionId != null) localVarPathParams.Add("submission_id", this.Configuration.ApiClient.ParameterToString(submissionId)); // path parameter
            if (payload != null && payload.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(payload); // http body (model) parameter
            }
            else
            {
                localVarPostBody = payload; // byte array
            }

            // authentication (api_key) required
            if (!String.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION")))
            {
                localVarHeaderParams["AUTHORIZATION"] = this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION");
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostSubmissionFeedbackDao", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

        /// <summary>
        ///  Update the submission details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of void</returns>
        public async System.Threading.Tasks.Task PostSubmissionFeedbackDaoAsync (int? submissionId, SubmissionFeedback payload)
        {
             await PostSubmissionFeedbackDaoAsyncWithHttpInfo(submissionId, payload);

        }

        /// <summary>
        ///  Update the submission details
        /// </summary>
        /// <exception cref="Com.AIcrowd.Evaluations.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="submissionId"></param>
        /// <param name="payload"></param>
        /// <returns>Task of ApiResponse</returns>
        public async System.Threading.Tasks.Task<ApiResponse<Object>> PostSubmissionFeedbackDaoAsyncWithHttpInfo (int? submissionId, SubmissionFeedback payload)
        {
            // verify the required parameter 'submissionId' is set
            if (submissionId == null)
                throw new ApiException(400, "Missing required parameter 'submissionId' when calling ArgoApi->PostSubmissionFeedbackDao");
            // verify the required parameter 'payload' is set
            if (payload == null)
                throw new ApiException(400, "Missing required parameter 'payload' when calling ArgoApi->PostSubmissionFeedbackDao");

            var localVarPath = "/argo/submissions/{submission_id}";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
                "application/json"
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (submissionId != null) localVarPathParams.Add("submission_id", this.Configuration.ApiClient.ParameterToString(submissionId)); // path parameter
            if (payload != null && payload.GetType() != typeof(byte[]))
            {
                localVarPostBody = this.Configuration.ApiClient.Serialize(payload); // http body (model) parameter
            }
            else
            {
                localVarPostBody = payload; // byte array
            }

            // authentication (api_key) required
            if (!String.IsNullOrEmpty(this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION")))
            {
                localVarHeaderParams["AUTHORIZATION"] = this.Configuration.GetApiKeyWithPrefix("AUTHORIZATION");
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.POST, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("PostSubmissionFeedbackDao", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<Object>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => x.Value.ToString()),
                null);
        }

    }
}
