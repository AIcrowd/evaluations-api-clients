package com.aicrowd.evaluations.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import com.aicrowd.evaluations.ApiUtils

import com.aicrowd.evaluations.models.GenericFeedback
import com.aicrowd.evaluations.models.GraderFeedback
import com.aicrowd.evaluations.models.SubmissionFeedback

import java.util.*;

@Mixin(ApiUtils)
class ArgoApi {
    String basePath = "https://localhost/v1"
    String versionPath = "/api/v1"

    def postGenericFeedbackContract ( String modelName, Integer objectId, GenericFeedback payload, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/argo/{model_name}/{object_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (modelName == null) {
            throw new RuntimeException("missing required params modelName")
        }
        // verify required params are set
        if (objectId == null) {
            throw new RuntimeException("missing required params objectId")
        }
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
    def postGraderFeedbackDao ( Integer graderId, GraderFeedback payload, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/argo/graders/{grader_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (graderId == null) {
            throw new RuntimeException("missing required params graderId")
        }
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
    def postSubmissionFeedbackDao ( Integer submissionId, SubmissionFeedback payload, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/argo/submissions/{submission_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (submissionId == null) {
            throw new RuntimeException("missing required params submissionId")
        }
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
}
