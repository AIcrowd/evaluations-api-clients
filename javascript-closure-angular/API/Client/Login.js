goog.provide('API.Client.Login');

/**
 * @record
 */
API.Client.Login = function() {}

/**
 * Email address of the user
 * @type {!string}
 * @export
 */
API.Client.Login.prototype.email;

/**
 * Password corresponding to the Email address
 * @type {!string}
 * @export
 */
API.Client.Login.prototype.password;

