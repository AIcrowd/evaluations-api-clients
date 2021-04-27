/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.19
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
    describe('SubmissionRetry', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.SubmissionRetry();
      });

      it('should create an instance of SubmissionRetry', function() {
        // TODO: update the code to test SubmissionRetry
        expect(instance).to.be.a(AicrowdEvaluations.SubmissionRetry);
      });

      it('should have the property queued (base name: "queued")', function() {
        // TODO: update the code to test the property queued
        expect(instance).to.have.property('queued');
        // expect(instance.queued).to.be(expectedValueLiteral);
      });

      it('should have the property failed (base name: "failed")', function() {
        // TODO: update the code to test the property failed
        expect(instance).to.have.property('failed');
        // expect(instance.failed).to.be(expectedValueLiteral);
      });

    });
  });

}));
