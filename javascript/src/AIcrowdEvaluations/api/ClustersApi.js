/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.27
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['AIcrowdEvaluations/ApiClient', 'AIcrowdEvaluations/model/Cluster'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/Cluster'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.ClustersApi = factory(root.AicrowdEvaluations.ApiClient, root.AicrowdEvaluations.Cluster);
  }
}(this, function(ApiClient, Cluster) {
  'use strict';

  /**
   * Clusters service.
   * @module AIcrowdEvaluations/api/ClustersApi
   * @version 1.0.0
   */

  /**
   * Constructs a new ClustersApi. 
   * @alias module:AIcrowdEvaluations/api/ClustersApi
   * @class
   * @param {module:AIcrowdEvaluations/ApiClient} [apiClient] Optional API client implementation to use,
   * default to {@link module:AIcrowdEvaluations/ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the createCluster operation.
     * @callback module:AIcrowdEvaluations/api/ClustersApi~createClusterCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Cluster} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Add a new cluster to AIcrowd and install necessary dependencies
     * @param {module:AIcrowdEvaluations/model/Cluster} payload 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/ClustersApi~createClusterCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Cluster}
     */
    this.createCluster = function(payload, opts, callback) {
      opts = opts || {};
      var postBody = payload;

      // verify the required parameter 'payload' is set
      if (payload === undefined || payload === null) {
        throw new Error("Missing the required parameter 'payload' when calling createCluster");
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
      var returnType = Cluster;

      return this.apiClient.callApi(
        '/clusters/', 'POST',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteCluster operation.
     * @callback module:AIcrowdEvaluations/api/ClustersApi~deleteClusterCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete a cluster by its ID
     * @param {Number} clusterId 
     * @param {module:AIcrowdEvaluations/api/ClustersApi~deleteClusterCallback} callback The callback function, accepting three arguments: error, data, response
     */
    this.deleteCluster = function(clusterId, callback) {
      var postBody = null;

      // verify the required parameter 'clusterId' is set
      if (clusterId === undefined || clusterId === null) {
        throw new Error("Missing the required parameter 'clusterId' when calling deleteCluster");
      }


      var pathParams = {
        'cluster_id': clusterId
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
        '/clusters/{cluster_id}', 'DELETE',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getCluster operation.
     * @callback module:AIcrowdEvaluations/api/ClustersApi~getClusterCallback
     * @param {String} error Error message, if any.
     * @param {module:AIcrowdEvaluations/model/Cluster} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get details of a cluster by its ID
     * @param {Number} clusterId 
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/ClustersApi~getClusterCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:AIcrowdEvaluations/model/Cluster}
     */
    this.getCluster = function(clusterId, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'clusterId' is set
      if (clusterId === undefined || clusterId === null) {
        throw new Error("Missing the required parameter 'clusterId' when calling getCluster");
      }


      var pathParams = {
        'cluster_id': clusterId
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
      var returnType = Cluster;

      return this.apiClient.callApi(
        '/clusters/{cluster_id}', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the listClusters operation.
     * @callback module:AIcrowdEvaluations/api/ClustersApi~listClustersCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:AIcrowdEvaluations/model/Cluster>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * List all clusters available
     * @param {Object} opts Optional parameters
     * @param {String} opts.xFields An optional fields mask
     * @param {module:AIcrowdEvaluations/api/ClustersApi~listClustersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:AIcrowdEvaluations/model/Cluster>}
     */
    this.listClusters = function(opts, callback) {
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
      var returnType = [Cluster];

      return this.apiClient.callApi(
        '/clusters/', 'GET',
        pathParams, queryParams, collectionQueryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
