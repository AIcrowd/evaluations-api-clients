/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.26
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../../src/AIcrowdEvaluations/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../../src/AIcrowdEvaluations/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.AicrowdEvaluations);
  }
}(this, function(expect, AicrowdEvaluations) {
  'use strict';

  var instance;

  describe('AIcrowdEvaluations', function() {
    describe('AuthResponse', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.AuthResponse();
      });

      it('should create an instance of AuthResponse', function() {
        // TODO: update the code to test AuthResponse
        expect(instance).to.be.a(AicrowdEvaluations.AuthResponse);
      });

      it('should have the property authorization (base name: "Authorization")', function() {
        // TODO: update the code to test the property authorization
        expect(instance).to.have.property('authorization');
        // expect(instance.authorization).to.be(expectedValueLiteral);
      });

    });
  });

}));
