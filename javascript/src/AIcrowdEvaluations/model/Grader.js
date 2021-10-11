/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.23
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
    root.AicrowdEvaluations.Grader = factory(root.AicrowdEvaluations.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * The Grader model module.
   * @module AIcrowdEvaluations/model/Grader
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>Grader</code>.
   * @alias module:AIcrowdEvaluations/model/Grader
   * @class
   * @param evaluatorRepo {String} Git URL of the repository containing the code that will be used for the evaluation
   */
  var exports = function(evaluatorRepo) {
    this.evaluatorRepo = evaluatorRepo;
  };

  /**
   * Constructs a <code>Grader</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:AIcrowdEvaluations/model/Grader} obj Optional instance to populate.
   * @return {module:AIcrowdEvaluations/model/Grader} The populated <code>Grader</code> instance.
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
      if (data.hasOwnProperty('archived'))
        obj.archived = ApiClient.convertToType(data['archived'], 'Boolean');
      if (data.hasOwnProperty('dataset'))
        obj.dataset = ApiClient.convertToType(data['dataset'], Object);
      if (data.hasOwnProperty('cluster_id'))
        obj.clusterId = ApiClient.convertToType(data['cluster_id'], 'Number');
      if (data.hasOwnProperty('description'))
        obj.description = ApiClient.convertToType(data['description'], 'String');
      if (data.hasOwnProperty('workflow_spec'))
        obj.workflowSpec = ApiClient.convertToType(data['workflow_spec'], Object);
      if (data.hasOwnProperty('evaluator_repo'))
        obj.evaluatorRepo = ApiClient.convertToType(data['evaluator_repo'], 'String');
      if (data.hasOwnProperty('evaluator_repo_tag'))
        obj.evaluatorRepoTag = ApiClient.convertToType(data['evaluator_repo_tag'], 'String');
      if (data.hasOwnProperty('name'))
        obj.name = ApiClient.convertToType(data['name'], 'String');
      if (data.hasOwnProperty('notifications'))
        obj.notifications = ApiClient.convertToType(data['notifications'], 'String');
      if (data.hasOwnProperty('logs'))
        obj.logs = ApiClient.convertToType(data['logs'], 'String');
      if (data.hasOwnProperty('meta'))
        obj.meta = ApiClient.convertToType(data['meta'], 'String');
      if (data.hasOwnProperty('status'))
        obj.status = ApiClient.convertToType(data['status'], 'String');
      if (data.hasOwnProperty('secrets'))
        obj.secrets = ApiClient.convertToType(data['secrets'], Object);
      if (data.hasOwnProperty('wf_name'))
        obj.wfName = ApiClient.convertToType(data['wf_name'], 'String');
      if (data.hasOwnProperty('allowed_extensions'))
        obj.allowedExtensions = ApiClient.convertToType(data['allowed_extensions'], Object);
      if (data.hasOwnProperty('workflow_priority'))
        obj.workflowPriority = ApiClient.convertToType(data['workflow_priority'], 'Number');
      if (data.hasOwnProperty('config_path'))
        obj.configPath = ApiClient.convertToType(data['config_path'], 'String');
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
   * Grader archival status
   * @member {Boolean} archived
   */
  exports.prototype.archived = undefined;

  /**
   * Dataset metadata
   * @member {Object} dataset
   */
  exports.prototype.dataset = undefined;

  /**
   * Cluster to run the grader on
   * @member {Number} clusterId
   */
  exports.prototype.clusterId = undefined;

  /**
   * Description of the grader
   * @member {String} description
   */
  exports.prototype.description = undefined;

  /**
   * Argo workflow template spec
   * @member {Object} workflowSpec
   */
  exports.prototype.workflowSpec = undefined;

  /**
   * Git URL of the repository containing the code that will be used for the evaluation
   * @member {String} evaluatorRepo
   */
  exports.prototype.evaluatorRepo = undefined;

  /**
   * Git branch/tag that should be used with the evaluator repository.
   * @member {String} evaluatorRepoTag
   */
  exports.prototype.evaluatorRepoTag = undefined;

  /**
   * Name of the grader
   * @member {String} name
   */
  exports.prototype.name = undefined;

  /**
   * Notifications available for the grader.
   * @member {String} notifications
   */
  exports.prototype.notifications = undefined;

  /**
   * Logs from argo workflow
   * @member {String} logs
   */
  exports.prototype.logs = undefined;

  /**
   * Additional meta data of the grader
   * @member {String} meta
   */
  exports.prototype.meta = undefined;

  /**
   * Status of the grader - True if it ready, False otherwise
   * @member {String} status
   */
  exports.prototype.status = undefined;

  /**
   * List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
   * @member {Object} secrets
   */
  exports.prototype.secrets = undefined;

  /**
   * Name of the workflow used to setup grader
   * @member {String} wfName
   */
  exports.prototype.wfName = undefined;

  /**
   * Allowed extensions for the grader
   * @member {Object} allowedExtensions
   */
  exports.prototype.allowedExtensions = undefined;

  /**
   * Workflow priority to assign
   * @member {Number} workflowPriority
   */
  exports.prototype.workflowPriority = undefined;

  /**
   * Path to grader configuration (default: aicrowd.yaml)
   * @member {String} configPath
   */
  exports.prototype.configPath = undefined;

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
