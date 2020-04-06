goog.provide('API.Client.GraderFeedback');

/**
 * @record
 */
API.Client.GraderFeedback = function() {}

/**
 * Status of the grader
 * @type {!boolean}
 * @export
 */
API.Client.GraderFeedback.prototype.status;

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

