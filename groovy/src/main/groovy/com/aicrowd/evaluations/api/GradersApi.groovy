package com.aicrowd.evaluations.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import com.aicrowd.evaluations.ApiUtils

import com.aicrowd.evaluations.models.Grader
import com.aicrowd.evaluations.models.GraderMeta

import java.util.*;

@Mixin(ApiUtils)
class GradersApi {
    String basePath = "https://localhost/v1"
    String versionPath = "/api/v1"

    def archiveGrader ( Integer graderId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/{grader_id}/archive"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (graderId == null) {
            throw new RuntimeException("missing required params graderId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
    def createGrader ( Grader payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/"

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
                    Grader.class )
                    
    }
    def deleteGrader ( Integer graderId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/{grader_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (graderId == null) {
            throw new RuntimeException("missing required params graderId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def getGrader ( Integer graderId, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/{grader_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (graderId == null) {
            throw new RuntimeException("missing required params graderId")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Grader.class )
                    
    }
    def getGraderLogs ( Integer graderId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/{grader_id}/logs"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (graderId == null) {
            throw new RuntimeException("missing required params graderId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def listGraders ( String perPage, String page, String meta, String name, String status, Integer userId, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        if (!"null".equals(String.valueOf(perPage)))
            queryParams.put("per_page", String.valueOf(perPage))
if (!"null".equals(String.valueOf(page)))
            queryParams.put("page", String.valueOf(page))
if (!"null".equals(String.valueOf(meta)))
            queryParams.put("meta", String.valueOf(meta))
if (!"null".equals(String.valueOf(name)))
            queryParams.put("name", String.valueOf(name))
if (!"null".equals(String.valueOf(status)))
            queryParams.put("status", String.valueOf(status))
if (!"null".equals(String.valueOf(userId)))
            queryParams.put("user_id", String.valueOf(userId))

        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    Grader.class )
                    
    }
    def unarchiveGrader ( Integer graderId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/{grader_id}/unarchive"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (graderId == null) {
            throw new RuntimeException("missing required params graderId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
    def updateGrader ( Integer graderId, GraderMeta payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/graders/{grader_id}"

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

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PATCH", "",
                    Grader.class )
                    
    }
}
