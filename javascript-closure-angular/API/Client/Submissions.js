goog.provide('API.Client.Submissions');

/**
 * @record
 */
API.Client.Submissions = function() {}

/**
 * ID
 * @type {!number}
 * @export
 */
API.Client.Submissions.prototype.id;

/**
 * Creation time
 * @type {!Date}
 * @export
 */
API.Client.Submissions.prototype.created;

/**
 * Last updation time
 * @type {!Date}
 * @export
 */
API.Client.Submissions.prototype.updated;

/**
 * Grader identifier
 * @type {!number}
 * @export
 */
API.Client.Submissions.prototype.graderId;

/**
 * URL to the submission code
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Submissions.prototype.submissionData;

/**
 * Current status of the submission
 * @type {!string}
 * @export
 */
API.Client.Submissions.prototype.status;

/**
 * S3 link of the output (available after the evaluation)
 * @type {!string}
 * @export
 */
API.Client.Submissions.prototype.output;

/**
 * Array of any additional outputs
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Submissions.prototype.additionalOutputs;

/**
 * S3 link of the STDOUT of the evaluation
 * @type {!string}
 * @export
 */
API.Client.Submissions.prototype.logs;

/**
 * Evaluation start time
 * @type {!Date}
 * @export
 */
API.Client.Submissions.prototype.started;

/**
 * Evaluation end time
 * @type {!Date}
 * @export
 */
API.Client.Submissions.prototype.ended;

/**
 * Additional meta data of the grader
 * @type {!string}
 * @export
 */
API.Client.Submissions.prototype.meta;

/**
 * Name of the workflow used to evaluate submission
 * @type {!string}
 * @export
 */
API.Client.Submissions.prototype.wfName;

/**
 * User ID
 * @type {!number}
 * @export
 */
API.Client.Submissions.prototype.userId;

/**
 * Organisation ID
 * @type {!number}
 * @export
 */
API.Client.Submissions.prototype.organisationId;

