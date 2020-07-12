goog.provide('API.Client.SubmissionRetry');

/**
 * @record
 */
API.Client.SubmissionRetry = function() {}

/**
 * List of submission IDs queued for evaluation
 * @type {!API.Client.Object}
 * @export
 */
API.Client.SubmissionRetry.prototype.queued;

/**
 * List of submission IDs failed to get queued
 * @type {!Array<!number>}
 * @export
 */
API.Client.SubmissionRetry.prototype.failed;

