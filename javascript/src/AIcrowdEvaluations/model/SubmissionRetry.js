/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.18
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
    root.AicrowdEvaluations.SubmissionRetry = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The SubmissionRetry model module.
   * @module AIcrowdEvaluations/model/SubmissionRetry
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>SubmissionRetry</code>.
   * @alias module:AIcrowdEvaluations/model/SubmissionRetry
   * @class
   */
  var exports = function() {
  };

  /**
   * Constructs a <code>SubmissionRetry</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/SubmissionRetry} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/SubmissionRetry} The populated <code>SubmissionRetry</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('queued'))
        obj.queued = ApiClient.convertToType(data['queued'], Object);
      if (data.hasOwnProperty('failed'))
        obj.failed = ApiClient.convertToType(data['failed'], ['Number']);
    }
    return obj;
  }

  /**
   * List of submission IDs queued for evaluation
   * @member {Object} queued
   */
  exports.prototype.queued = undefined;

  /**
   * List of submission IDs failed to get queued
   * @member {Array.<Number>} failed
   */
  exports.prototype.failed = undefined;


  return exports;

}));
