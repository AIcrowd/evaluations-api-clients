/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.ClustersApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * API to create and evaluate custom challenges on AIcrowd!
 * Version: 1.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.ClustersApi');

goog.require('API.Client.Cluster');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.ClustersApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('ClustersApiBasePath') ?
                   /** @type {!string} */ ($injector.get('ClustersApiBasePath')) :
                   'https://localhost/v1';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('ClustersApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('ClustersApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.ClustersApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * Add a new cluster to AIcrowd and install necessary dependencies
 * @param {!Cluster} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Cluster>}
 */
API.Client.ClustersApi.prototype.createCluster = function(payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/clusters/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling createCluster');
  }
  headerParams['X-Fields'] = opt_xFields;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: payload,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * 
 * Delete a cluster by its ID
 * @param {!number} clusterId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.ClustersApi.prototype.deleteCluster = function(clusterId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/clusters/{cluster_id}'
      .replace('{' + 'cluster_id' + '}', String(clusterId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'clusterId' is set
  if (!clusterId) {
    throw new Error('Missing required parameter clusterId when calling deleteCluster');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'DELETE',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * 
 * Get details of a cluster by its ID
 * @param {!number} clusterId 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Cluster>}
 */
API.Client.ClustersApi.prototype.getCluster = function(clusterId, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/clusters/{cluster_id}'
      .replace('{' + 'cluster_id' + '}', String(clusterId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'clusterId' is set
  if (!clusterId) {
    throw new Error('Missing required parameter clusterId when calling getCluster');
  }
  headerParams['X-Fields'] = opt_xFields;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * 
 * List all clusters available
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.Cluster>>}
 */
API.Client.ClustersApi.prototype.listClusters = function(opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/clusters/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  headerParams['X-Fields'] = opt_xFields;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
