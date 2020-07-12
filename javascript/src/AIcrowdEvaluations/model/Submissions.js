/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.14
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
    root.AicrowdEvaluations.Submissions = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The Submissions model module.
   * @module AIcrowdEvaluations/model/Submissions
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>Submissions</code>.
   * @alias module:AIcrowdEvaluations/model/Submissions
   * @class
   * @param graderId {Number} Grader identifier
   */
  var exports = function(graderId) {
    this.graderId = graderId;
  };

  /**
   * Constructs a <code>Submissions</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/Submissions} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/Submissions} The populated <code>Submissions</code> instance.
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
      if (data.hasOwnProperty('grader_id'))
        obj.graderId = ApiClient.convertToType(data['grader_id'], 'Number');
      if (data.hasOwnProperty('submission_data'))
        obj.submissionData = ApiClient.convertToType(data['submission_data'], Object);
      if (data.hasOwnProperty('status'))
        obj.status = ApiClient.convertToType(data['status'], 'String');
      if (data.hasOwnProperty('output'))
        obj.output = ApiClient.convertToType(data['output'], 'String');
      if (data.hasOwnProperty('additional_outputs'))
        obj.additionalOutputs = ApiClient.convertToType(data['additional_outputs'], Object);
      if (data.hasOwnProperty('logs'))
        obj.logs = ApiClient.convertToType(data['logs'], 'String');
      if (data.hasOwnProperty('started'))
        obj.started = ApiClient.convertToType(data['started'], 'Date');
      if (data.hasOwnProperty('ended'))
        obj.ended = ApiClient.convertToType(data['ended'], 'Date');
      if (data.hasOwnProperty('meta'))
        obj.meta = ApiClient.convertToType(data['meta'], 'String');
      if (data.hasOwnProperty('wf_name'))
        obj.wfName = ApiClient.convertToType(data['wf_name'], 'String');
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
   * Grader identifier
   * @member {Number} graderId
   */
  exports.prototype.graderId = undefined;

  /**
   * URL to the submission code
   * @member {Object} submissionData
   */
  exports.prototype.submissionData = undefined;

  /**
   * Current status of the submission
   * @member {String} status
   */
  exports.prototype.status = undefined;

  /**
   * S3 link of the output (available after the evaluation)
   * @member {String} output
   */
  exports.prototype.output = undefined;

  /**
   * Array of any additional outputs
   * @member {Object} additionalOutputs
   */
  exports.prototype.additionalOutputs = undefined;

  /**
   * S3 link of the STDOUT of the evaluation
   * @member {String} logs
   */
  exports.prototype.logs = undefined;

  /**
   * Evaluation start time
   * @member {Date} started
   */
  exports.prototype.started = undefined;

  /**
   * Evaluation end time
   * @member {Date} ended
   */
  exports.prototype.ended = undefined;

  /**
   * Additional meta data of the grader
   * @member {String} meta
   */
  exports.prototype.meta = undefined;

  /**
   * Name of the workflow used to evaluate submission
   * @member {String} wfName
   */
  exports.prototype.wfName = undefined;

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
