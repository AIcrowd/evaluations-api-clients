/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.26
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['AIcrowdEvaluations/ApiClient', 'AIcrowdEvaluations/model/Organisation', 'AIcrowdEvaluations/model/OrganisationQuota'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Organisation'), require('../model/OrganisationQuota'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.OrganisationsApi = factory(root.AicrowdEvaluations.ApiClient, root.AicrowdEvaluations.Organisation, root.AicrowdEvaluations.OrganisationQuota);
  }
}(this, function(ApiClient, Organisation, OrganisationQuota) {
  'use strict';

  /**
   * Organisations service.
   * @module AIcrowdEvaluations/api/OrganisationsApi
   * @version 1.0.0
   */

  /**
   * Constructs a new OrganisationsApi. 
   * @alias module:AIcrowdEvaluations/api/OrganisationsApi
   * @class
   * @param {module:AIcrowdEvaluations/ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:AIcrowdEvaluations/ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the createOrganisation operation.
     * @callback module:AIcrowdEvaluations/api/OrganisationsApi~createOrganisationCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Organisation} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new organisation
     * @param {module:AIcrowdEvaluations/model/Organisation} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/OrganisationsApi~createOrganisationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Organisation}
     */
    this.createOrganisation = function(payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling createOrganisation");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'X-Fields': opts['xFields']
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = Organisation;

      return this.apiClient.callApi(
        '/organisations/', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteOrganisation operation.
     * @callback module:AIcrowdEvaluations/api/OrganisationsApi~deleteOrganisationCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete an Organisation
     * @param {Number} organisationId 
     * @param {module:AIcrowdEvaluations/api/OrganisationsApi~deleteOrganisationCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteOrganisation = function(organisationId, callback) {
      var postBody = null;

      // verify the required parameter 'organisationId' is set
      if (organisationId === undefined || organisationId === null) {
        throw new Error("Missing the required parameter 'organisationId' when calling deleteOrganisation");
      }


      var pathParams = {
        'organisation_id': organisationId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/organisations/{organisation_id}', 'DELETE',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getOrganisation operation.
     * @callback module:AIcrowdEvaluations/api/OrganisationsApi~getOrganisationCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Organisation} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get details of an organisation
     * @param {Number} organisationId 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/OrganisationsApi~getOrganisationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Organisation}
     */
    this.getOrganisation = function(organisationId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'organisationId' is set
      if (organisationId === undefined || organisationId === null) {
        throw new Error("Missing the required parameter 'organisationId' when calling getOrganisation");
      }


      var pathParams = {
        'organisation_id': organisationId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'X-Fields': opts['xFields']
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = Organisation;

      return this.apiClient.callApi(
        '/organisations/{organisation_id}', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the listOrganisations operation.
     * @callback module:AIcrowdEvaluations/api/OrganisationsApi~listOrganisationsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:AIcrowdEvaluations/model/Organisation>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List all organisations
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/OrganisationsApi~listOrganisationsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:AIcrowdEvaluations/model/Organisation>}
     */
    this.listOrganisations = function(opts, callback) {
      opts = opts || {};
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'X-Fields': opts['xFields']
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = [Organisation];

      return this.apiClient.callApi(
        '/organisations/', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the updateOrganisation operation.
     * @callback module:AIcrowdEvaluations/api/OrganisationsApi~updateOrganisationCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Organisation} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update an Organisation
     * @param {Number} organisationId 
     * @param {module:AIcrowdEvaluations/model/Organisation} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/OrganisationsApi~updateOrganisationCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Organisation}
     */
    this.updateOrganisation = function(organisationId, payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'organisationId' is set
      if (organisationId === undefined || organisationId === null) {
        throw new Error("Missing the required parameter 'organisationId' when calling updateOrganisation");
      }

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling updateOrganisation");
      }


      var pathParams = {
        'organisation_id': organisationId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
        'X-Fields': opts['xFields']
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = Organisation;

      return this.apiClient.callApi(
        '/organisations/{organisation_id}', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the updateOrganisationQuota operation.
     * @callback module:AIcrowdEvaluations/api/OrganisationsApi~updateOrganisationQuotaCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Add or subtract quota for an organisation
     * @param {Number} organisationId 
     * @param {module:AIcrowdEvaluations/model/OrganisationQuota} payload 
     * @param {module:AIcrowdEvaluations/api/OrganisationsApi~updateOrganisationQuotaCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.updateOrganisationQuota = function(organisationId, payload, callback) {
      var postBody = payload;

      // verify the required parameter 'organisationId' is set
      if (organisationId === undefined || organisationId === null) {
        throw new Error("Missing the required parameter 'organisationId' when calling updateOrganisationQuota");
      }

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling updateOrganisationQuota");
      }


      var pathParams = {
        'organisation_id': organisationId
      };
      var queryParams = {
      };
      var collectionQueryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['api_key'];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = null;

      return this.apiClient.callApi(
        '/organisations/{organisation_id}/addquota', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
