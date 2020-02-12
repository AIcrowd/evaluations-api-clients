goog.provide('API.Client.Grader');

/**
 * @record
 */
API.Client.Grader = function() {}

/**
 * ID
 * @type {!number}
 * @export
 */
API.Client.Grader.prototype.id;

/**
 * Creation time
 * @type {!Date}
 * @export
 */
API.Client.Grader.prototype.created;

/**
 * Last updation time
 * @type {!Date}
 * @export
 */
API.Client.Grader.prototype.updated;

/**
 * S3 link of the Dataset
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.datasetUrl;

/**
 * git/http
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.codeAccessMode;

/**
 * SSH private key if using git or HTTP Auth token if using HTTP to access the submission code
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.codeAccessAuthKey;

/**
 * Cluster to run the grader on
 * @type {!number}
 * @export
 */
API.Client.Grader.prototype.clusterId;

/**
 * Docker registry username
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.dockerUsername;

/**
 * Docker registry password
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.dockerPassword;

/**
 * Docker registry URL
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.dockerRegistry;

/**
 * Argo workflow template spec
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Grader.prototype.workflowSpec;

/**
 * S3 link to the zip file containing the code that will be used for the evaluation
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.evaluationCode;

/**
 * Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.storageCapacity;

/**
 * Additional meta data of the grader
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Grader.prototype.meta;

/**
 * Status of the grader - True if it ready, False otherwise
 * @type {!boolean}
 * @export
 */
API.Client.Grader.prototype.status;

/**
 * User ID
 * @type {!number}
 * @export
 */
API.Client.Grader.prototype.userId;

/**
 * Organisation ID
 * @type {!number}
 * @export
 */
API.Client.Grader.prototype.organisationId;

