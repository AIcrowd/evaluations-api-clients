/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.GradersApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * API to create and evaluate custom challenges
 * Version: 1.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.GradersApi');

goog.require('API.Client.Grader');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.GradersApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('GradersApiBasePath') ?
                   /** @type {!string} */ ($injector.get('GradersApiBasePath')) :
                   'https://localhost/v1';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('GradersApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('GradersApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.GradersApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * Delete a grader
 * @param {!number} graderId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.GradersApi.prototype.deleteGraderDao = function(graderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling deleteGraderDao');
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
 * Get information of a grader
 * @param {!number} graderId 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Grader>}
 */
API.Client.GradersApi.prototype.getGraderDao = function(graderId, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling getGraderDao');
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
 * Get all grader
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.Grader>>}
 */
API.Client.GradersApi.prototype.getGraderListDao = function(opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/';

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

/**
 * 
 * Create a new grader
 * @param {!Grader} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Grader>}
 */
API.Client.GradersApi.prototype.postGraderListDao = function(payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling postGraderListDao');
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
 * Update a grader
 * @param {!number} graderId 
 * @param {!Grader} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Grader>}
 */
API.Client.GradersApi.prototype.putGraderDao = function(graderId, payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling putGraderDao');
  }
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling putGraderDao');
  }
  headerParams['X-Fields'] = opt_xFields;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'PUT',
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
