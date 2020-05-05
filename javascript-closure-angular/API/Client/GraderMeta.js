goog.provide('API.Client.GraderMeta');

/**
 * @record
 */
API.Client.GraderMeta = function() {}

/**
 * Dataset metadata
 * @type {!API.Client.Object}
 * @export
 */
API.Client.GraderMeta.prototype.dataset;

/**
 * Notifications available for the grader
 * @type {!API.Client.Object}
 * @export
 */
API.Client.GraderMeta.prototype.notifications;

/**
 * Name of the grader
 * @type {!string}
 * @export
 */
API.Client.GraderMeta.prototype.name;

/**
 * Description of the grader
 * @type {!string}
 * @export
 */
API.Client.GraderMeta.prototype.description;

/**
 * Cluster to run the grader on
 * @type {!number}
 * @export
 */
API.Client.GraderMeta.prototype.clusterId;

/**
 * Additional meta data of the grader
 * @type {!string}
 * @export
 */
API.Client.GraderMeta.prototype.meta;

