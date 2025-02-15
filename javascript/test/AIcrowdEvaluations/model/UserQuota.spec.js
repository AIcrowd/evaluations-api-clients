/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.27
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
    describe('UserQuota', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.UserQuota();
      });

      it('should create an instance of UserQuota', function() {
        // TODO: update the code to test UserQuota
        expect(instance).to.be.a(AicrowdEvaluations.UserQuota);
      });

      it('should have the property quota (base name: "quota")', function() {
        // TODO: update the code to test the property quota
        expect(instance).to.have.property('quota');
        // expect(instance.quota).to.be(expectedValueLiteral);
      });

    });
  });

}));
