/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.SubmissionsApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * API to create and evaluate custom challenges
 * Version: 1.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.SubmissionsApi');

goog.require('API.Client.Submissions');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.SubmissionsApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('SubmissionsApiBasePath') ?
                   /** @type {!string} */ ($injector.get('SubmissionsApiBasePath')) :
                   'https://localhost/v1';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('SubmissionsApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('SubmissionsApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.SubmissionsApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * Stop evaluation of a submission
 * @param {!number} submissionId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.SubmissionsApi.prototype.deleteSubmissionDao = function(submissionId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/submissions/{submission_id}'
      .replace('{' + 'submission_id' + '}', String(submissionId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'submissionId' is set
  if (!submissionId) {
    throw new Error('Missing required parameter submissionId when calling deleteSubmissionDao');
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
 * Get details of a submission
 * @param {!number} submissionId 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Submissions>}
 */
API.Client.SubmissionsApi.prototype.getSubmissionDao = function(submissionId, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/submissions/{submission_id}'
      .replace('{' + 'submission_id' + '}', String(submissionId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'submissionId' is set
  if (!submissionId) {
    throw new Error('Missing required parameter submissionId when calling getSubmissionDao');
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
 * Get the submission data
 * @param {!number} submissionId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.SubmissionsApi.prototype.getSubmissionDataDao = function(submissionId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/submissions/{submission_id}/data'
      .replace('{' + 'submission_id' + '}', String(submissionId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'submissionId' is set
  if (!submissionId) {
    throw new Error('Missing required parameter submissionId when calling getSubmissionDataDao');
  }
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
 * Get all submissions
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.Submissions>>}
 */
API.Client.SubmissionsApi.prototype.getSubmissionListDao = function(opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/submissions/';

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
 * Make a new submission
 * @param {!Submissions} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Submissions>}
 */
API.Client.SubmissionsApi.prototype.postSubmissionListDao = function(payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/submissions/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling postSubmissionListDao');
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
