/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.20
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['AIcrowdEvaluations/ApiClient', 'AIcrowdEvaluations/model/User', 'AIcrowdEvaluations/model/UserQuota'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/User'), require('../model/UserQuota'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.UsersApi = factory(root.AicrowdEvaluations.ApiClient, root.AicrowdEvaluations.User, root.AicrowdEvaluations.UserQuota);
  }
}(this, function(ApiClient, User, UserQuota) {
  'use strict';

  /**
   * Users service.
   * @module AIcrowdEvaluations/api/UsersApi
   * @version 1.0.0
   */

  /**
   * Constructs a new UsersApi. 
   * @alias module:AIcrowdEvaluations/api/UsersApi
   * @class
   * @param {module:AIcrowdEvaluations/ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:AIcrowdEvaluations/ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the createUser operation.
     * @callback module:AIcrowdEvaluations/api/UsersApi~createUserCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/User} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create a new user
     * @param {module:AIcrowdEvaluations/model/User} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/UsersApi~createUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/User}
     */
    this.createUser = function(payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling createUser");
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
      var returnType = User;

      return this.apiClient.callApi(
        '/users/', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteUser operation.
     * @callback module:AIcrowdEvaluations/api/UsersApi~deleteUserCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete a user
     * @param {Number} userId 
     * @param {module:AIcrowdEvaluations/api/UsersApi~deleteUserCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteUser = function(userId, callback) {
      var postBody = null;

      // verify the required parameter 'userId' is set
      if (userId === undefined || userId === null) {
        throw new Error("Missing the required parameter 'userId' when calling deleteUser");
      }


      var pathParams = {
        'user_id': userId
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
        '/users/{user_id}', 'DELETE',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getUser operation.
     * @callback module:AIcrowdEvaluations/api/UsersApi~getUserCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/User} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get information of a user
     * @param {Number} userId 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/UsersApi~getUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/User}
     */
    this.getUser = function(userId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'userId' is set
      if (userId === undefined || userId === null) {
        throw new Error("Missing the required parameter 'userId' when calling getUser");
      }


      var pathParams = {
        'user_id': userId
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
      var returnType = User;

      return this.apiClient.callApi(
        '/users/{user_id}', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the listUsers operation.
     * @callback module:AIcrowdEvaluations/api/UsersApi~listUsersCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:AIcrowdEvaluations/model/User>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get all user
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/UsersApi~listUsersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:AIcrowdEvaluations/model/User>}
     */
    this.listUsers = function(opts, callback) {
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
      var returnType = [User];

      return this.apiClient.callApi(
        '/users/', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the updateUser operation.
     * @callback module:AIcrowdEvaluations/api/UsersApi~updateUserCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/User} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update a user
     * @param {Number} userId 
     * @param {module:AIcrowdEvaluations/model/User} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/UsersApi~updateUserCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/User}
     */
    this.updateUser = function(userId, payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'userId' is set
      if (userId === undefined || userId === null) {
        throw new Error("Missing the required parameter 'userId' when calling updateUser");
      }

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling updateUser");
      }


      var pathParams = {
        'user_id': userId
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
      var returnType = User;

      return this.apiClient.callApi(
        '/users/{user_id}', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the updateUserQuota operation.
     * @callback module:AIcrowdEvaluations/api/UsersApi~updateUserQuotaCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Add or subtract quota for a user
     * @param {Number} userId 
     * @param {module:AIcrowdEvaluations/model/UserQuota} payload 
     * @param {module:AIcrowdEvaluations/api/UsersApi~updateUserQuotaCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.updateUserQuota = function(userId, payload, callback) {
      var postBody = payload;

      // verify the required parameter 'userId' is set
      if (userId === undefined || userId === null) {
        throw new Error("Missing the required parameter 'userId' when calling updateUserQuota");
      }

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling updateUserQuota");
      }


      var pathParams = {
        'user_id': userId
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
        '/users/{user_id}/addquota', 'PUT',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
