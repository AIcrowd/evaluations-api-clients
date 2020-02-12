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

  describe('(package)', function() {
    describe('SubmissionFeedback', function() {
      beforeEach(function() {
        instance = new EvaluationsApi.SubmissionFeedback();
      });

      it('should create an instance of SubmissionFeedback', function() {
        // TODO: update the code to test SubmissionFeedback
        expect(instance).to.be.a(EvaluationsApi.SubmissionFeedback);
      });

      it('should have the property status (base name: "status")', function() {
        // TODO: update the code to test the property status
        expect(instance).to.have.property('status');
        // expect(instance.status).to.be(expectedValueLiteral);
      });

      it('should have the property outputs (base name: "outputs")', function() {
        // TODO: update the code to test the property outputs
        expect(instance).to.have.property('outputs');
        // expect(instance.outputs).to.be(expectedValueLiteral);
      });

      it('should have the property score (base name: "score")', function() {
        // TODO: update the code to test the property score
        expect(instance).to.have.property('score');
        // expect(instance.score).to.be(expectedValueLiteral);
      });

      it('should have the property logs (base name: "logs")', function() {
        // TODO: update the code to test the property logs
        expect(instance).to.have.property('logs');
        // expect(instance.logs).to.be(expectedValueLiteral);
      });

    });
  });

}));
