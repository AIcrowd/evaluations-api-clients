/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.OrganisationsApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * API to create and evaluate custom challenges on AIcrowd!
 * Version: 1.0.0
 * Generated by: io.swagger.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.OrganisationsApi');

goog.require('API.Client.Organisation');
goog.require('API.Client.OrganisationQuota');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.OrganisationsApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('OrganisationsApiBasePath') ?
                   /** @type {!string} */ ($injector.get('OrganisationsApiBasePath')) :
                   'https://localhost/v1';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('OrganisationsApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('OrganisationsApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.OrganisationsApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * 
 * Create a new organisation
 * @param {!Organisation} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Organisation>}
 */
API.Client.OrganisationsApi.prototype.createOrganisation = function(payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/organisations/';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling createOrganisation');
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
 * Delete an Organisation
 * @param {!number} organisationId 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.OrganisationsApi.prototype.deleteOrganisation = function(organisationId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/organisations/{organisation_id}'
      .replace('{' + 'organisation_id' + '}', String(organisationId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'organisationId' is set
  if (!organisationId) {
    throw new Error('Missing required parameter organisationId when calling deleteOrganisation');
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
 * Get details of an organisation
 * @param {!number} organisationId 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Organisation>}
 */
API.Client.OrganisationsApi.prototype.getOrganisation = function(organisationId, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/organisations/{organisation_id}'
      .replace('{' + 'organisation_id' + '}', String(organisationId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'organisationId' is set
  if (!organisationId) {
    throw new Error('Missing required parameter organisationId when calling getOrganisation');
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
 * List all organisations
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.Organisation>>}
 */
API.Client.OrganisationsApi.prototype.listOrganisations = function(opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/organisations/';

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
 * Update an Organisation
 * @param {!number} organisationId 
 * @param {!Organisation} payload 
 * @param {!string=} opt_xFields An optional fields mask
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Organisation>}
 */
API.Client.OrganisationsApi.prototype.updateOrganisation = function(organisationId, payload, opt_xFields, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/organisations/{organisation_id}'
      .replace('{' + 'organisation_id' + '}', String(organisationId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'organisationId' is set
  if (!organisationId) {
    throw new Error('Missing required parameter organisationId when calling updateOrganisation');
  }
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling updateOrganisation');
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

/**
 * 
 * Add or subtract quota for an organisation
 * @param {!number} organisationId 
 * @param {!OrganisationQuota} payload 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise}
 */
API.Client.OrganisationsApi.prototype.updateOrganisationQuota = function(organisationId, payload, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/organisations/{organisation_id}/addquota'
      .replace('{' + 'organisation_id' + '}', String(organisationId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'organisationId' is set
  if (!organisationId) {
    throw new Error('Missing required parameter organisationId when calling updateOrganisationQuota');
  }
  // verify required parameter 'payload' is set
  if (!payload) {
    throw new Error('Missing required parameter payload when calling updateOrganisationQuota');
  }
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
