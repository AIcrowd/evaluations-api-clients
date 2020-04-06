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
    root.AicrowdEvaluations.Organisation = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The Organisation model module.
   * @module AIcrowdEvaluations/model/Organisation
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>Organisation</code>.
   * @alias module:AIcrowdEvaluations/model/Organisation
   * @class
   * @param name {String} Organisation Name
   * @param pocEmail {String} Point of contact email
   */
  var exports = function(name, pocEmail) {
    this.name = name;
    this.pocEmail = pocEmail;
  };

  /**
   * Constructs a <code>Organisation</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/Organisation} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/Organisation} The populated <code>Organisation</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'Number');
      if (data.hasOwnProperty('name'))
        obj.name = ApiClient.convertToType(data['name'], 'String');
      if (data.hasOwnProperty('poc_email'))
        obj.pocEmail = ApiClient.convertToType(data['poc_email'], 'String');
      if (data.hasOwnProperty('created_on'))
        obj.createdOn = ApiClient.convertToType(data['created_on'], 'Date');
      if (data.hasOwnProperty('total_quota'))
        obj.totalQuota = ApiClient.convertToType(data['total_quota'], 'Number');
      if (data.hasOwnProperty('quota'))
        obj.quota = ApiClient.convertToType(data['quota'], 'Number');
    }
    return obj;
  }

  /**
   * ID
   * @member {Number} id
   */
  exports.prototype.id = undefined;

  /**
   * Organisation Name
   * @member {String} name
   */
  exports.prototype.name = undefined;

  /**
   * Point of contact email
   * @member {String} pocEmail
   */
  exports.prototype.pocEmail = undefined;

  /**
   * Creation Time
   * @member {Date} createdOn
   */
  exports.prototype.createdOn = undefined;

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

  return exports;

}));
