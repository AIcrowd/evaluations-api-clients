/*
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.12
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/Grader'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Grader'));
  } else {
    // Browser globals (root is window)
    if (!root.EvaluationsApi) {
      root.EvaluationsApi = {};
    }
    root.EvaluationsApi.GradersApi = factory(root.EvaluationsApi.ApiClient, root.EvaluationsApi.Grader);
  }
}(this, function(ApiClient, Grader) {
  'use strict';

  /**
   * Graders service.
   * @module api/GradersApi
   * @version 1.0.0
   */

  /**
   * Constructs a new GradersApi. 
   * @alias module:api/GradersApi
   * @class
   * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the deleteGraderDao operation.
     * @callback module:api/GradersApi~deleteGraderDaoCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete a grader
     * @param {Number} graderId 
     * @param {module:api/GradersApi~deleteGraderDaoCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteGraderDao = function(graderId, callback) {
      var postBody = null;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling deleteGraderDao");
      }


      var pathParams = {
        'grader_id': graderId
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
        '/graders/{grader_id}', 'DELETE',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getGraderDao operation.
     * @callback module:api/GradersApi~getGraderDaoCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Grader} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get information of a grader
     * @param {Number} graderId 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:api/GradersApi~getGraderDaoCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Grader}
     */
    this.getGraderDao = function(graderId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling getGraderDao");
      }


      var pathParams = {
        'grader_id': graderId
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
      var returnType = Grader;

      return this.apiClient.callApi(
        '/graders/{grader_id}', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getGraderListDao operation.
     * @callback module:api/GradersApi~getGraderListDaoCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/Grader>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get all grader
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:api/GradersApi~getGraderListDaoCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/Grader>}
     */
    this.getGraderListDao = function(opts, callback) {
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
      var returnType = [Grader];

      return this.apiClient.callApi(
        '/graders/', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the postGraderListDao operation.
     * @callback module:api/GradersApi~postGraderListDaoCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Grader} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new grader
     * @param {module:model/Grader} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:api/GradersApi~postGraderListDaoCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Grader}
     */
    this.postGraderListDao = function(payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling postGraderListDao");
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
      var returnType = Grader;

      return this.apiClient.callApi(
        '/graders/', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the putGraderDao operation.
     * @callback module:api/GradersApi~putGraderDaoCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Grader} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update a grader
     * @param {Number} graderId 
     * @param {module:model/Grader} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:api/GradersApi~putGraderDaoCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Grader}
     */
    this.putGraderDao = function(graderId, payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling putGraderDao");
      }

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling putGraderDao");
      }


      var pathParams = {
        'grader_id': graderId
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
      var returnType = Grader;

      return this.apiClient.callApi(
        '/graders/{grader_id}', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
