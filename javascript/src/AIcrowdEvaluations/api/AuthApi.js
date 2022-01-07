/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.25
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['AIcrowdEvaluations/ApiClient', 'AIcrowdEvaluations/model/AuthLogout', 'AIcrowdEvaluations/model/AuthResponse', 'AIcrowdEvaluations/model/Login'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/AuthLogout'), require('../model/AuthResponse'), require('../model/Login'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.AuthApi = factory(root.AicrowdEvaluations.ApiClient, root.AicrowdEvaluations.AuthLogout, root.AicrowdEvaluations.AuthResponse, root.AicrowdEvaluations.Login);
  }
}(this, function(ApiClient, AuthLogout, AuthResponse, Login) {
  'use strict';

  /**
   * Auth service.
   * @module AIcrowdEvaluations/api/AuthApi
   * @version 1.0.0
   */

  /**
   * Constructs a new AuthApi. 
   * @alias module:AIcrowdEvaluations/api/AuthApi
   * @class
   * @param {module:AIcrowdEvaluations/ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:AIcrowdEvaluations/ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the login operation.
     * @callback module:AIcrowdEvaluations/api/AuthApi~loginCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/AuthResponse} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Log in a user with email and password.
     * @param {module:AIcrowdEvaluations/model/Login} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/AuthApi~loginCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/AuthResponse}
     */
    this.login = function(payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling login");
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

      var authNames = [];
      var contentTypes = ['application/json'];
      var accepts = ['application/json'];
      var returnType = AuthResponse;

      return this.apiClient.callApi(
        '/auth/login', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the logout operation.
     * @callback module:AIcrowdEvaluations/api/AuthApi~logoutCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/AuthLogout} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Invalidate the current authorization token.
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/AuthApi~logoutCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/AuthLogout}
     */
    this.logout = function(opts, callback) {
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
      var returnType = AuthLogout;

      return this.apiClient.callApi(
        '/auth/logout', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
