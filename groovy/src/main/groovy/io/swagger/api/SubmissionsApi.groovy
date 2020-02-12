package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.Submissions

import java.util.*;

@Mixin(ApiUtils)
class SubmissionsApi {
    String basePath = "https://localhost/v1"
    String versionPath = "/api/v1"

    def deleteSubmissionDao ( Integer submissionId, Closure onSuccess, Closure onFailure)  {
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
    def getSubmissionDao ( Integer submissionId, String xFields, Closure onSuccess, Closure onFailure)  {
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
    def getSubmissionListDao ( String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/submissions/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    Submissions.class )
                    
    }
    def postSubmissionListDao ( Submissions payload, String xFields, Closure onSuccess, Closure onFailure)  {
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
}
