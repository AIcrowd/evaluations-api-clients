package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.User
import io.swagger.model.UserQuota

import java.util.*;

@Mixin(ApiUtils)
class UsersApi {
    String basePath = "https://localhost/v1"
    String versionPath = "/api/v1"

    def deleteUserDao ( Integer userId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/users/{user_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (userId == null) {
            throw new RuntimeException("missing required params userId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def getUserDao ( Integer userId, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/users/{user_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (userId == null) {
            throw new RuntimeException("missing required params userId")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    User.class )
                    
    }
    def getUserListDao ( String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/users/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    User.class )
                    
    }
    def postUserListDao ( User payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/users/"

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
                    User.class )
                    
    }
    def putQuotaDao ( Integer userId, UserQuota payload, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/users/addquota/{user_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (userId == null) {
            throw new RuntimeException("missing required params userId")
        }
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    null )
                    
    }
    def putUserDao ( Integer userId, User payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/users/{user_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (userId == null) {
            throw new RuntimeException("missing required params userId")
        }
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    User.class )
                    
    }
}
