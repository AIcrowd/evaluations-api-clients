/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.GradersApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * API to create and evaluate custom challenges on AIcrowd!
 * Version: 1.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.GradersApi');

goog.require('API.Client.Grader');
goog.require('API.Client.GraderLogs');
goog.require('API.Client.GraderMeta');

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
 * Archive a grader
 * @param {!number} graderId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.GradersApi.prototype.archiveGrader = function(graderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}/archive'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling archiveGrader');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
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
API.Client.GradersApi.prototype.createGrader = function(payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling createGrader');
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
 * Delete a grader by its ID
 * @param {!number} graderId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.GradersApi.prototype.deleteGrader = function(graderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling deleteGrader');
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
 * Get the grader logs by submission ID
 * @param {!number} graderId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.GradersApi.prototype.downloadGraderLogs = function(graderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}/logs/download'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling downloadGraderLogs');
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
 * Get details of a grader by its ID
 * @param {!number} graderId 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Grader>}
 */
API.Client.GradersApi.prototype.getGrader = function(graderId, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling getGrader');
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
 * Get grader logs from loki
 * @param {!number} graderId 
 * @param {!number=} opt_step Granularity of logs
 * @param {!number=} opt_logLines Number of lines to fetch
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.GraderLogs>}
 */
API.Client.GradersApi.prototype.getGraderLogs = function(graderId, opt_step, opt_logLines, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}/logs'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling getGraderLogs');
  }
  if (opt_step !== undefined) {
    queryParameters['step'] = opt_step;
  }

  if (opt_logLines !== undefined) {
    queryParameters['log_lines'] = opt_logLines;
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
 * List all graders available
 * @param {!string=} opt_perPage Results to display per page
 * @param {!string=} opt_page Page number
 * @param {!string=} opt_meta Fetch graders containing this meta value
 * @param {!string=} opt_name Fetch grader containing name
 * @param {!string=} opt_status Fetch graders with this status
 * @param {!number=} opt_userId Fetch graders created by the user
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.Grader>>}
 */
API.Client.GradersApi.prototype.listGraders = function(opt_perPage, opt_page, opt_meta, opt_name, opt_status, opt_userId, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_perPage !== undefined) {
    queryParameters['per_page'] = opt_perPage;
  }

  if (opt_page !== undefined) {
    queryParameters['page'] = opt_page;
  }

  if (opt_meta !== undefined) {
    queryParameters['meta'] = opt_meta;
  }

  if (opt_name !== undefined) {
    queryParameters['name'] = opt_name;
  }

  if (opt_status !== undefined) {
    queryParameters['status'] = opt_status;
  }

  if (opt_userId !== undefined) {
    queryParameters['user_id'] = opt_userId;
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
 * Unarchive a grader
 * @param {!number} graderId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.GradersApi.prototype.unarchiveGrader = function(graderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}/unarchive'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling unarchiveGrader');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
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
 * Update meta details of a grader by its ID. Warning: There is no data validation.
 * @param {!number} graderId 
 * @param {!GraderMeta} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Grader>}
 */
API.Client.GradersApi.prototype.updateGrader = function(graderId, payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/graders/{grader_id}'
      .replace('{' + 'grader_id' + '}', String(graderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'graderId' is set
  if (!graderId) {
    throw new Error('Missing required parameter graderId when calling updateGrader');
  }
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling updateGrader');
  }
  headerParams['X-Fields'] = opt_xFields;

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'PATCH',
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
