/*
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.12
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.EvaluationsApi);
  }
}(this, function(expect, EvaluationsApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new EvaluationsApi.AuthApi();
  });

  describe('(package)', function() {
    describe('AuthApi', function() {
      describe('logoutAUser', function() {
        it('should call logoutAUser successfully', function(done) {
          // TODO: uncomment logoutAUser call
          /*

          instance.logoutAUser(function(error, data, response) {
            if (error) {
              done(error);
              return;
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('userLogin', function() {
        it('should call userLogin successfully', function(done) {
          // TODO: uncomment, update parameter values for userLogin call
          /*
          var payload = new EvaluationsApi.Login();
          payload.email = "";
          payload.password = "";

          instance.userLogin(payload, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
    });
  });

}));
