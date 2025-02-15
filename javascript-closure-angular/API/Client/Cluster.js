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
 * Docker registry URL. Dockerhub is used by default.
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.dockerRegistry;

/**
 * Kubernetes namespace to run the workflows in
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.namespace;

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
 * Name of the workflow used to setup grader
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.wfName;

/**
 * External IP exposed by LoadBalancer Service of argo-server deployment
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.argoHost;

/**
 * Argo server token required for authentication
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.argoToken;

/**
 * Minio user to give file access to
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.minioUser;

/**
 * Minio s3 policy
 * @type {!string}
 * @export
 */
API.Client.Cluster.prototype.s3Policy;

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

