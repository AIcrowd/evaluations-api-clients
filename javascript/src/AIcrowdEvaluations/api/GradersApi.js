/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.13
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['AIcrowdEvaluations/ApiClient', 'AIcrowdEvaluations/model/Grader', 'AIcrowdEvaluations/model/GraderMeta'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Grader'), require('../model/GraderMeta'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.GradersApi = factory(root.AicrowdEvaluations.ApiClient, root.AicrowdEvaluations.Grader, root.AicrowdEvaluations.GraderMeta);
  }
}(this, function(ApiClient, Grader, GraderMeta) {
  'use strict';

  /**
   * Graders service.
   * @module AIcrowdEvaluations/api/GradersApi
   * @version 1.0.0
   */

  /**
   * Constructs a new GradersApi. 
   * @alias module:AIcrowdEvaluations/api/GradersApi
   * @class
   * @param {module:AIcrowdEvaluations/ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:AIcrowdEvaluations/ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the createGrader operation.
     * @callback module:AIcrowdEvaluations/api/GradersApi~createGraderCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Grader} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new grader
     * @param {module:AIcrowdEvaluations/model/Grader} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/GradersApi~createGraderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Grader}
     */
    this.createGrader = function(payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling createGrader");
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
     * Callback function to receive the result of the deleteGrader operation.
     * @callback module:AIcrowdEvaluations/api/GradersApi~deleteGraderCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete a grader by its ID
     * @param {Number} graderId 
     * @param {module:AIcrowdEvaluations/api/GradersApi~deleteGraderCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteGrader = function(graderId, callback) {
      var postBody = null;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling deleteGrader");
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
     * Callback function to receive the result of the getGrader operation.
     * @callback module:AIcrowdEvaluations/api/GradersApi~getGraderCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Grader} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get details of a grader by its ID
     * @param {Number} graderId 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/GradersApi~getGraderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Grader}
     */
    this.getGrader = function(graderId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling getGrader");
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
     * Callback function to receive the result of the getGraderLogs operation.
     * @callback module:AIcrowdEvaluations/api/GradersApi~getGraderLogsCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get the grader logs by submission ID
     * @param {Number} graderId 
     * @param {module:AIcrowdEvaluations/api/GradersApi~getGraderLogsCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.getGraderLogs = function(graderId, callback) {
      var postBody = null;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling getGraderLogs");
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
        '/graders/{grader_id}/logs', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the listGraders operation.
     * @callback module:AIcrowdEvaluations/api/GradersApi~listGradersCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:AIcrowdEvaluations/model/Grader>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List all graders available
     * @param {Object} opts Optional parameters
     * @param {String} opts.meta Fetch graders containing this meta value
     * @param {String} opts.name Fetch grader containing name
     * @param {String} opts.status Fetch graders with this status
     * @param {Number} opts.userId Fetch graders created by the user
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/GradersApi~listGradersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:AIcrowdEvaluations/model/Grader>}
     */
    this.listGraders = function(opts, callback) {
      opts = opts || {};
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
        'meta': opts['meta'],
        'name': opts['name'],
        'status': opts['status'],
        'user_id': opts['userId'],
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
     * Callback function to receive the result of the updateGrader operation.
     * @callback module:AIcrowdEvaluations/api/GradersApi~updateGraderCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Grader} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update meta details of a grader by its ID. Warning: There is no data validation.
     * @param {Number} graderId 
     * @param {module:AIcrowdEvaluations/model/GraderMeta} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/GradersApi~updateGraderCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Grader}
     */
    this.updateGrader = function(graderId, payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'graderId' is set
      if (graderId === undefined || graderId === null) {
        throw new Error("Missing the required parameter 'graderId' when calling updateGrader");
      }

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling updateGrader");
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
        '/graders/{grader_id}', 'PATCH',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
