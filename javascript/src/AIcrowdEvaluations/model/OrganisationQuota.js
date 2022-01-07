/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.25
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
    root.AicrowdEvaluations.OrganisationQuota = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The OrganisationQuota model module.
   * @module AIcrowdEvaluations/model/OrganisationQuota
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>OrganisationQuota</code>.
   * @alias module:AIcrowdEvaluations/model/OrganisationQuota
   * @class
   * @param quota {Number} Quota to be added or reduced
   */
  var exports = function(quota) {
    this.quota = quota;
  };

  /**
   * Constructs a <code>OrganisationQuota</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/OrganisationQuota} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/OrganisationQuota} The populated <code>OrganisationQuota</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('quota'))
        obj.quota = ApiClient.convertToType(data['quota'], 'Number');
    }
    return obj;
  }

  /**
   * Quota to be added or reduced
   * @member {Number} quota
   */
  exports.prototype.quota = undefined;


  return exports;

}));
