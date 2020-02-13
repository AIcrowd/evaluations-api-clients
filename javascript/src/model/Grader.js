/*
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.12
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.EvaluationsApi) {
      root.EvaluationsApi = {};
    }
    root.EvaluationsApi.Grader = factory(root.EvaluationsApi.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The Grader model module.
   * @module model/Grader
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>Grader</code>.
   * @alias module:model/Grader
   * @class
   * @param codeAccessMode {String} git/http
   * @param codeAccessAuthKey {String} SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
   * @param dockerUsername {String} Docker registry username
   * @param dockerPassword {String} Docker registry password
   * @param evaluationCode {String} S3 link to the zip file containing the code that will be used for the evaluation
   */
  var exports = function(codeAccessMode, codeAccessAuthKey, dockerUsername, dockerPassword, evaluationCode) {
    this.codeAccessMode = codeAccessMode;
    this.codeAccessAuthKey = codeAccessAuthKey;
    this.dockerUsername = dockerUsername;
    this.dockerPassword = dockerPassword;
    this.evaluationCode = evaluationCode;
  };

  /**
   * Constructs a <code>Grader</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Grader} obj Optional instance to populate.
   * @return {module:model/Grader} The populated <code>Grader</code> instance.
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
      if (data.hasOwnProperty('dataset_url'))
        obj.datasetUrl = ApiClient.convertToType(data['dataset_url'], 'String');
      if (data.hasOwnProperty('code_access_mode'))
        obj.codeAccessMode = ApiClient.convertToType(data['code_access_mode'], 'String');
      if (data.hasOwnProperty('code_access_auth_key'))
        obj.codeAccessAuthKey = ApiClient.convertToType(data['code_access_auth_key'], 'String');
      if (data.hasOwnProperty('cluster_id'))
        obj.clusterId = ApiClient.convertToType(data['cluster_id'], 'Number');
      if (data.hasOwnProperty('docker_username'))
        obj.dockerUsername = ApiClient.convertToType(data['docker_username'], 'String');
      if (data.hasOwnProperty('docker_password'))
        obj.dockerPassword = ApiClient.convertToType(data['docker_password'], 'String');
      if (data.hasOwnProperty('docker_registry'))
        obj.dockerRegistry = ApiClient.convertToType(data['docker_registry'], 'String');
      if (data.hasOwnProperty('workflow_spec'))
        obj.workflowSpec = ApiClient.convertToType(data['workflow_spec'], Object);
      if (data.hasOwnProperty('evaluation_code'))
        obj.evaluationCode = ApiClient.convertToType(data['evaluation_code'], 'String');
      if (data.hasOwnProperty('storage_capacity'))
        obj.storageCapacity = ApiClient.convertToType(data['storage_capacity'], 'String');
      if (data.hasOwnProperty('meta'))
        obj.meta = ApiClient.convertToType(data['meta'], Object);
      if (data.hasOwnProperty('status'))
        obj.status = ApiClient.convertToType(data['status'], 'Boolean');
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
   * S3 link of the Dataset
   * @member {String} datasetUrl
   */
  exports.prototype.datasetUrl = undefined;

  /**
   * git/http
   * @member {String} codeAccessMode
   */
  exports.prototype.codeAccessMode = undefined;

  /**
   * SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
   * @member {String} codeAccessAuthKey
   */
  exports.prototype.codeAccessAuthKey = undefined;

  /**
   * Cluster to run the grader on
   * @member {Number} clusterId
   */
  exports.prototype.clusterId = undefined;

  /**
   * Docker registry username
   * @member {String} dockerUsername
   */
  exports.prototype.dockerUsername = undefined;

  /**
   * Docker registry password
   * @member {String} dockerPassword
   */
  exports.prototype.dockerPassword = undefined;

  /**
   * Docker registry URL. Dockerhub is used by default.
   * @member {String} dockerRegistry
   */
  exports.prototype.dockerRegistry = undefined;

  /**
   * Argo workflow template spec
   * @member {Object} workflowSpec
   */
  exports.prototype.workflowSpec = undefined;

  /**
   * S3 link to the zip file containing the code that will be used for the evaluation
   * @member {String} evaluationCode
   */
  exports.prototype.evaluationCode = undefined;

  /**
   * Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
   * @member {String} storageCapacity
   */
  exports.prototype.storageCapacity = undefined;

  /**
   * Additional meta data of the grader
   * @member {Object} meta
   */
  exports.prototype.meta = undefined;

  /**
   * Status of the grader - True if it ready, False otherwise
   * @member {Boolean} status
   */
  exports.prototype.status = undefined;

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
