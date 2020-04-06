goog.provide('API.Client.GraderFeedback');

/**
 * @record
 */
API.Client.GraderFeedback = function() {}

/**
 * Serialized JSON for dataset metadata
 * @type {!string}
 * @export
 */
API.Client.GraderFeedback.prototype.dataset;

/**
 * Status of the grader
 * @type {!boolean}
 * @export
 */
API.Client.GraderFeedback.prototype.status;

/**
 * Serialized JSON containing available notifications for the grader
 * @type {!string}
 * @export
 */
API.Client.GraderFeedback.prototype.notifications;

/**
 * Serialized YAML workflow spec
 * @type {!string}
 * @export
 */
API.Client.GraderFeedback.prototype.workflowSpec;

/**
 * Serialized JSON of submissions accepted by the grader
 * @type {!string}
 * @export
 */
API.Client.GraderFeedback.prototype.submissionTypes;

