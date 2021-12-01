/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.24
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
    root.AicrowdEvaluations.SubmissionRetryInput = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The SubmissionRetryInput model module.
   * @module AIcrowdEvaluations/model/SubmissionRetryInput
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>SubmissionRetryInput</code>.
   * @alias module:AIcrowdEvaluations/model/SubmissionRetryInput
   * @class
   */
  var exports = function() {
  };

  /**
   * Constructs a <code>SubmissionRetryInput</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/SubmissionRetryInput} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/SubmissionRetryInput} The populated <code>SubmissionRetryInput</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('submissions'))
        obj.submissions = ApiClient.convertToType(data['submissions'], ['Number']);
    }
    return obj;
  }

  /**
   * List of submission IDs to retry
   * @member {Array.<Number>} submissions
   */
  exports.prototype.submissions = undefined;


  return exports;

}));
