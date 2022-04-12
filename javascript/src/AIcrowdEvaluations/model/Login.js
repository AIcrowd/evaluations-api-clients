/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.27
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
    root.AicrowdEvaluations.Login = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The Login model module.
   * @module AIcrowdEvaluations/model/Login
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>Login</code>.
   * @alias module:AIcrowdEvaluations/model/Login
   * @class
   * @param email {String} Email address of the user
   * @param password {String} Password corresponding to the Email address
   */
  var exports = function(email, password) {
    this.email = email;
    this.password = password;
  };

  /**
   * Constructs a <code>Login</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/Login} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/Login} The populated <code>Login</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('email'))
        obj.email = ApiClient.convertToType(data['email'], 'String');
      if (data.hasOwnProperty('password'))
        obj.password = ApiClient.convertToType(data['password'], 'String');
    }
    return obj;
  }

  /**
   * Email address of the user
   * @member {String} email
   */
  exports.prototype.email = undefined;

  /**
   * Password corresponding to the Email address
   * @member {String} password
   */
  exports.prototype.password = undefined;


  return exports;

}));
