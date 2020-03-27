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
    define(['AIcrowdEvaluations/ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.Cluster = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The Cluster model module.
   * @module AIcrowdEvaluations/model/Cluster
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>Cluster</code>.
   * @alias module:AIcrowdEvaluations/model/Cluster
   * @class
   * @param remoteAddress {String} Remote address used to connect to the cluster
   * @param authToken {String} Authentication needed for the cluster
   */
  var exports = function(remoteAddress, authToken) {
    this.remoteAddress = remoteAddress;
    this.authToken = authToken;
  };

  /**
   * Constructs a <code>Cluster</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/Cluster} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/Cluster} The populated <code>Cluster</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'Number');
      if (data.hasOwnProperty('created'))
        obj.created = ApiClient.convertToType(data['created'], 'Date');
      if (data.hasOwnProperty('updated'))
        obj.updated = ApiClient.convertToType(data['updated'], 'Date');
      if (data.hasOwnProperty('remote_address'))
        obj.remoteAddress = ApiClient.convertToType(data['remote_address'], 'String');
      if (data.hasOwnProperty('auth_token'))
        obj.authToken = ApiClient.convertToType(data['auth_token'], 'String');
      if (data.hasOwnProperty('storage_class'))
        obj.storageClass = ApiClient.convertToType(data['storage_class'], 'String');
      if (data.hasOwnProperty('status'))
        obj.status = ApiClient.convertToType(data['status'], 'Boolean');
      if (data.hasOwnProperty('meta'))
        obj.meta = ApiClient.convertToType(data['meta'], Object);
      if (data.hasOwnProperty('user_id'))
        obj.userId = ApiClient.convertToType(data['user_id'], 'Number');
      if (data.hasOwnProperty('organisation_id'))
        obj.organisationId = ApiClient.convertToType(data['organisation_id'], 'Number');
    }
    return obj;
  }

  /**
   * ID
   * @member {Number} id
   */
  exports.prototype.id = undefined;

  /**
   * Creation time
   * @member {Date} created
   */
  exports.prototype.created = undefined;

  /**
   * Last updation time
   * @member {Date} updated
   */
  exports.prototype.updated = undefined;

  /**
   * Remote address used to connect to the cluster
   * @member {String} remoteAddress
   */
  exports.prototype.remoteAddress = undefined;

  /**
   * Authentication needed for the cluster
   * @member {String} authToken
   */
  exports.prototype.authToken = undefined;

  /**
   * Storage class to use for datasets
   * @member {String} storageClass
   */
  exports.prototype.storageClass = undefined;

  /**
   * Readiness of the cluster
   * @member {Boolean} status
   */
  exports.prototype.status = undefined;

  /**
   * Additional metadata
   * @member {Object} meta
   */
  exports.prototype.meta = undefined;

  /**
   * User ID
   * @member {Number} userId
   */
  exports.prototype.userId = undefined;

  /**
   * Organisation ID
   * @member {Number} organisationId
   */
  exports.prototype.organisationId = undefined;

  return exports;

}));
