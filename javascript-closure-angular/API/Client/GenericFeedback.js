goog.provide('API.Client.GenericFeedback');

/**
 * @record
 */
API.Client.GenericFeedback = function() {}

/**
 * Status of the operation
 * @type {!boolean}
 * @export
 */
API.Client.GenericFeedback.prototype.status;

/**
 * Additional metadata to add
 * @type {!API.Client.Object}
 * @export
 */
API.Client.GenericFeedback.prototype.meta;

