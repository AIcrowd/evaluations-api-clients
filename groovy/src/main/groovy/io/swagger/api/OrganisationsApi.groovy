package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.Organisation
import io.swagger.model.OrganisationQuota

import java.util.*;

@Mixin(ApiUtils)
class OrganisationsApi {
    String basePath = "https://localhost/v1"
    String versionPath = "/api/v1"

    def deleteOrganisationDao ( Integer organisationId, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/organisations/{organisation_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisationId == null) {
            throw new RuntimeException("missing required params organisationId")
        }

        

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def getOrganisationDao ( Integer organisationId, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/organisations/{organisation_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisationId == null) {
            throw new RuntimeException("missing required params organisationId")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    Organisation.class )
                    
    }
    def getOrganisationListDao ( String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/organisations/"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    Organisation.class )
                    
    }
    def postOrganisationListDao ( Organisation payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/organisations/"

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
                    Organisation.class )
                    
    }
    def putOrganisationDao ( Integer organisationId, Organisation payload, String xFields, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/organisations/{organisation_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisationId == null) {
            throw new RuntimeException("missing required params organisationId")
        }
        // verify required params are set
        if (payload == null) {
            throw new RuntimeException("missing required params payload")
        }

        
        headerParams.put("X-Fields", xFields)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    Organisation.class )
                    
    }
    def putQuotaDao ( Integer organisationId, OrganisationQuota payload, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/organisations/addquota/{organisation_id}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (organisationId == null) {
            throw new RuntimeException("missing required params organisationId")
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
}
