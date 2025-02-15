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
 * Grader archival status
 * @type {!boolean}
 * @export
 */
API.Client.Grader.prototype.archived;

/**
 * Dataset metadata
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Grader.prototype.dataset;

/**
 * Cluster to run the grader on
 * @type {!number}
 * @export
 */
API.Client.Grader.prototype.clusterId;

/**
 * Description of the grader
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.description;

/**
 * Argo workflow template spec
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Grader.prototype.workflowSpec;

/**
 * Git URL of the repository containing the code that will be used for the evaluation
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.evaluatorRepo;

/**
 * Git branch/tag that should be used with the evaluator repository.
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.evaluatorRepoTag;

/**
 * Name of the grader
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.name;

/**
 * Notifications available for the grader.
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.notifications;

/**
 * Logs from argo workflow
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.logs;

/**
 * Additional meta data of the grader
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.meta;

/**
 * Status of the grader - True if it ready, False otherwise
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.status;

/**
 * List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Grader.prototype.secrets;

/**
 * Name of the workflow used to setup grader
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.wfName;

/**
 * Allowed extensions for the grader
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Grader.prototype.allowedExtensions;

/**
 * Workflow priority to assign
 * @type {!number}
 * @export
 */
API.Client.Grader.prototype.workflowPriority;

/**
 * Path to grader configuration (default: aicrowd.yaml)
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.configPath;

/**
 * Docker repo to use for grader images
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.dockerRepo;

/**
 * Context for grader files inside the repository
 * @type {!string}
 * @export
 */
API.Client.Grader.prototype.contextDir;

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

