package com.aicrowd.evaluations.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import com.aicrowd.evaluations.ApiUtils

import com.aicrowd.evaluations.models.SubmissionLogs
import com.aicrowd.evaluations.models.SubmissionRetry
import com.aicrowd.evaluations.models.SubmissionRetryInput
import com.aicrowd.evaluations.models.Submissions

import java.util.*;

@Mixin(ApiUtils)
class SubmissionsApi {
    String basePath = "https://localhost/v1"
    String versionPath = "/api/v1"

    def createSubmission ( Submissions payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    Submissions.class )
                    
    }
    def deleteSubmission ( Integer submissionId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/{submission_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (submissionId == null) {
            throw new RuntimeException("missing required params submissionId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def downloadSubmissionLogs ( Integer submissionId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/{submission_id}/logs/download"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (submissionId == null) {
            throw new RuntimeException("missing required params submissionId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def getSubmission ( Integer submissionId, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/{submission_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (submissionId == null) {
            throw new RuntimeException("missing required params submissionId")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Submissions.class )
                    
    }
    def getSubmissionData ( Integer submissionId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/{submission_id}/data"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (submissionId == null) {
            throw new RuntimeException("missing required params submissionId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def getSubmissionLogs ( Integer submissionId, Integer step, Integer logLines, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/{submission_id}/logs"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (submissionId == null) {
            throw new RuntimeException("missing required params submissionId")
        }

        if (!"null".equals(String.valueOf(step)))
            queryParams.put("step", String.valueOf(step))
if (!"null".equals(String.valueOf(logLines)))
            queryParams.put("log_lines", String.valueOf(logLines))

        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    SubmissionLogs.class )
                    
    }
    def listSubmissions ( String perPage, String page, String meta, String status, Integer graderId, Integer userId, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        if (!"null".equals(String.valueOf(perPage)))
            queryParams.put("per_page", String.valueOf(perPage))
if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(meta)))
            queryParams.put("meta", String.valueOf(meta))
if (!"null".equals(String.valueOf(status)))
            queryParams.put("status", String.valueOf(status))
if (!"null".equals(String.valueOf(graderId)))
            queryParams.put("grader_id", String.valueOf(graderId))
if (!"null".equals(String.valueOf(userId)))
            queryParams.put("user_id", String.valueOf(userId))

        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    Submissions.class )
                    
    }
    def retrySubmissions ( SubmissionRetryInput payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/retry"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    SubmissionRetry.class )
                    
    }
}
