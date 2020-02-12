goog.provide('API.Client.Organisation');

/**
 * @record
 */
API.Client.Organisation = function() {}

/**
 * ID
 * @type {!number}
 * @export
 */
API.Client.Organisation.prototype.id;

/**
 * Organisation Name
 * @type {!string}
 * @export
 */
API.Client.Organisation.prototype.name;

/**
 * Point of contact email
 * @type {!string}
 * @export
 */
API.Client.Organisation.prototype.pocEmail;

/**
 * Creation Time
 * @type {!Date}
 * @export
 */
API.Client.Organisation.prototype.createdOn;

/**
 * Total assigned evaluation quota
 * @type {!number}
 * @export
 */
API.Client.Organisation.prototype.totalQuota;

/**
 * Available evaluation quota
 * @type {!number}
 * @export
 */
API.Client.Organisation.prototype.quota;

