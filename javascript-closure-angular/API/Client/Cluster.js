goog.provide('API.Client.Cluster');

/**
 * @record
 */
API.Client.Cluster = function() {}

/**
 * ID
 * @type {!number}
 * @export
 */
API.Client.Cluster.prototype.id;

/**
 * Creation time
 * @type {!Date}
 * @export
 */
API.Client.Cluster.prototype.created;

/**
 * Last updation time
 * @type {!Date}
 * @export
 */
API.Client.Cluster.prototype.updated;

/**
 * Remote address used to connect to the cluster
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.remoteAddress;

/**
 * Authentication needed for the cluster
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.authToken;

/**
 * Docker registry username
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.dockerUsername;

/**
 * Docker registry password
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.dockerPassword;

/**
 * Docker registry URL. Dockerhub is used by default.
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.dockerRegistry;

/**
 * Storage class to use for datasets
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.storageClass;

/**
 * Readiness of the cluster
 * @type {!boolean}
 * @export
 */
API.Client.Cluster.prototype.status;

/**
 * Additional metadata
 * @type {!API.Client.Object}
 * @export
 */
API.Client.Cluster.prototype.meta;

/**
 * User ID
 * @type {!number}
 * @export
 */
API.Client.Cluster.prototype.userId;

/**
 * Organisation ID
 * @type {!number}
 * @export
 */
API.Client.Cluster.prototype.organisationId;

