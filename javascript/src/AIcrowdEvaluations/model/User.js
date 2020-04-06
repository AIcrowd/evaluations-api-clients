/*
 * Evaluations API
 * API to create and evaluate custom challenges
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
    define(['AIcrowdEvaluations/ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.AicrowdEvaluations) {
      root.AicrowdEvaluations = {};
    }
    root.AicrowdEvaluations.User = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The User model module.
   * @module AIcrowdEvaluations/model/User
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>User</code>.
   * @alias module:AIcrowdEvaluations/model/User
   * @class
   * @param email {String} Email
   * @param organisationId {Number} Organisation identifier
   * @param password {String} user password
   */
  var exports = function(email, organisationId, password) {
    this.email = email;
    this.organisationId = organisationId;
    this.password = password;
  };

  /**
   * Constructs a <code>User</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/User} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/User} The populated <code>User</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'Number');
      if (data.hasOwnProperty('email'))
        obj.email = ApiClient.convertToType(data['email'], 'String');
      if (data.hasOwnProperty('admin'))
        obj.admin = ApiClient.convertToType(data['admin'], 'Boolean');
      if (data.hasOwnProperty('created_on'))
        obj.createdOn = ApiClient.convertToType(data['created_on'], 'Date');
      if (data.hasOwnProperty('password_hash'))
        obj.passwordHash = ApiClient.convertToType(data['password_hash'], 'String');
      if (data.hasOwnProperty('total_quota'))
        obj.totalQuota = ApiClient.convertToType(data['total_quota'], 'Number');
      if (data.hasOwnProperty('quota'))
        obj.quota = ApiClient.convertToType(data['quota'], 'Number');
      if (data.hasOwnProperty('organisation_id'))
        obj.organisationId = ApiClient.convertToType(data['organisation_id'], 'Number');
      if (data.hasOwnProperty('password'))
        obj.password = ApiClient.convertToType(data['password'], 'String');
    }
    return obj;
  }

  /**
   * ID
   * @member {Number} id
   */
  exports.prototype.id = undefined;

  /**
   * Email
   * @member {String} email
   */
  exports.prototype.email = undefined;

  /**
   * Admin Boolean
   * @member {Boolean} admin
   */
  exports.prototype.admin = undefined;

  /**
   * Creation Time
   * @member {Date} createdOn
   */
  exports.prototype.createdOn = undefined;

  /**
   * Hashed Password
   * @member {String} passwordHash
   */
  exports.prototype.passwordHash = undefined;

  /**
   * Total assigned evaluation quota
   * @member {Number} totalQuota
   */
  exports.prototype.totalQuota = undefined;

  /**
   * Available evaluation quota
   * @member {Number} quota
   */
  exports.prototype.quota = undefined;

  /**
   * Organisation identifier
   * @member {Number} organisationId
   */
  exports.prototype.organisationId = undefined;

  /**
   * user password
   * @member {String} password
   */
  exports.prototype.password = undefined;

  return exports;

}));
