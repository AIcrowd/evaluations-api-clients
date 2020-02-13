goog.provide('API.Client.AuthResponse');

/**
 * @record
 */
API.Client.AuthResponse = function() {}

/**
 * Authorization token that should be used in the headers
 * @type {!string}
 * @export
 */
API.Client.AuthResponse.prototype.authorization;

