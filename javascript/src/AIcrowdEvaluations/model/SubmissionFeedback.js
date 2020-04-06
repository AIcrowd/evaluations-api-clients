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
    root.AicrowdEvaluations.SubmissionFeedback = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The SubmissionFeedback model module.
   * @module AIcrowdEvaluations/model/SubmissionFeedback
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>SubmissionFeedback</code>.
   * @alias module:AIcrowdEvaluations/model/SubmissionFeedback
   * @class
   * @param status {String} Status of the submission
   * @param outputs {String} S3 link of the outputs
   * @param score {Number} Additional outputs
   * @param logs {String} Output on stdout for run-evaluator.run-submitted-code step
   */
  var exports = function(status, outputs, score, logs) {
    this.status = status;
    this.outputs = outputs;
    this.score = score;
    this.logs = logs;
  };

  /**
   * Constructs a <code>SubmissionFeedback</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/SubmissionFeedback} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/SubmissionFeedback} The populated <code>SubmissionFeedback</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('status'))
        obj.status = ApiClient.convertToType(data['status'], 'String');
      if (data.hasOwnProperty('outputs'))
        obj.outputs = ApiClient.convertToType(data['outputs'], 'String');
      if (data.hasOwnProperty('score'))
        obj.score = ApiClient.convertToType(data['score'], 'Number');
      if (data.hasOwnProperty('logs'))
        obj.logs = ApiClient.convertToType(data['logs'], 'String');
    }
    return obj;
  }

  /**
   * Status of the submission
   * @member {String} status
   */
  exports.prototype.status = undefined;

  /**
   * S3 link of the outputs
   * @member {String} outputs
   */
  exports.prototype.outputs = undefined;

  /**
   * Additional outputs
   * @member {Number} score
   */
  exports.prototype.score = undefined;

  /**
   * Output on stdout for run-evaluator.run-submitted-code step
   * @member {String} logs
   */
  exports.prototype.logs = undefined;

  return exports;

}));
