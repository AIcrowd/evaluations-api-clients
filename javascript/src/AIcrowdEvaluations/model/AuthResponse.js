/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.21
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
    root.AicrowdEvaluations.AuthResponse = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The AuthResponse model module.
   * @module AIcrowdEvaluations/model/AuthResponse
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>AuthResponse</code>.
   * @alias module:AIcrowdEvaluations/model/AuthResponse
   * @class
   */
  var exports = function() {
  };

  /**
   * Constructs a <code>AuthResponse</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/AuthResponse} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/AuthResponse} The populated <code>AuthResponse</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('Authorization'))
        obj.authorization = ApiClient.convertToType(data['Authorization'], 'String');
    }
    return obj;
  }

  /**
   * API Authorization token that should be used in the headers
   * @member {String} authorization
   */
  exports.prototype.authorization = undefined;


  return exports;

}));
