goog.provide('API.Client.User');

/**
 * @record
 */
API.Client.User = function() {}

/**
 * ID
 * @type {!number}
 * @export
 */
API.Client.User.prototype.id;

/**
 * Email
 * @type {!string}
 * @export
 */
API.Client.User.prototype.email;

/**
 * Admin Boolean
 * @type {!boolean}
 * @export
 */
API.Client.User.prototype.admin;

/**
 * Creation Time
 * @type {!Date}
 * @export
 */
API.Client.User.prototype.createdOn;

/**
 * Hashed Password
 * @type {!string}
 * @export
 */
API.Client.User.prototype.passwordHash;

/**
 * Total assigned evaluation quota
 * @type {!number}
 * @export
 */
API.Client.User.prototype.totalQuota;

/**
 * Available evaluation quota
 * @type {!number}
 * @export
 */
API.Client.User.prototype.quota;

/**
 * Organisation identifier
 * @type {!number}
 * @export
 */
API.Client.User.prototype.organisationId;

/**
 * user password
 * @type {!string}
 * @export
 */
API.Client.User.prototype.password;

