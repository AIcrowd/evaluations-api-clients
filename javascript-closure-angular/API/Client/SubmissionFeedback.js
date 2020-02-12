goog.provide('API.Client.SubmissionFeedback');

/**
 * @record
 */
API.Client.SubmissionFeedback = function() {}

/**
 * Status of the submission
 * @type {!string}
 * @export
 */
API.Client.SubmissionFeedback.prototype.status;

/**
 * S3 link of the outputs
 * @type {!string}
 * @export
 */
API.Client.SubmissionFeedback.prototype.outputs;

/**
 * Additional outputs
 * @type {!number}
 * @export
 */
API.Client.SubmissionFeedback.prototype.score;

/**
 * Output on stdout for run-evaluator.run-submitted-code step
 * @type {!string}
 * @export
 */
API.Client.SubmissionFeedback.prototype.logs;

