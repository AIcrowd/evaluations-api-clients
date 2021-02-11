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
    root.AicrowdEvaluations.GraderMeta = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The GraderMeta model module.
   * @module AIcrowdEvaluations/model/GraderMeta
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>GraderMeta</code>.
   * @alias module:AIcrowdEvaluations/model/GraderMeta
   * @class
   */
  var exports = function() {
  };

  /**
   * Constructs a <code>GraderMeta</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/GraderMeta} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/GraderMeta} The populated <code>GraderMeta</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('dataset'))
        obj.dataset = ApiClient.convertToType(data['dataset'], Object);
      if (data.hasOwnProperty('notifications'))
        obj.notifications = ApiClient.convertToType(data['notifications'], Object);
      if (data.hasOwnProperty('name'))
        obj.name = ApiClient.convertToType(data['name'], 'String');
      if (data.hasOwnProperty('description'))
        obj.description = ApiClient.convertToType(data['description'], 'String');
      if (data.hasOwnProperty('cluster_id'))
        obj.clusterId = ApiClient.convertToType(data['cluster_id'], 'Number');
      if (data.hasOwnProperty('meta'))
        obj.meta = ApiClient.convertToType(data['meta'], 'String');
    }
    return obj;
  }

  /**
   * Dataset metadata
   * @member {Object} dataset
   */
  exports.prototype.dataset = undefined;

  /**
   * Notifications available for the grader
   * @member {Object} notifications
   */
  exports.prototype.notifications = undefined;

  /**
   * Name of the grader
   * @member {String} name
   */
  exports.prototype.name = undefined;

  /**
   * Description of the grader
   * @member {String} description
   */
  exports.prototype.description = undefined;

  /**
   * Cluster to run the grader on
   * @member {Number} clusterId
   */
  exports.prototype.clusterId = undefined;

  /**
   * Additional meta data of the grader
   * @member {String} meta
   */
  exports.prototype.meta = undefined;


  return exports;

}));
