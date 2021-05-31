/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.20
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
    describe('Submissions', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.Submissions();
      });

      it('should create an instance of Submissions', function() {
        // TODO: update the code to test Submissions
        expect(instance).to.be.a(AicrowdEvaluations.Submissions);
      });

      it('should have the property id (base name: "id")', function() {
        // TODO: update the code to test the property id
        expect(instance).to.have.property('id');
        // expect(instance.id).to.be(expectedValueLiteral);
      });

      it('should have the property created (base name: "created")', function() {
        // TODO: update the code to test the property created
        expect(instance).to.have.property('created');
        // expect(instance.created).to.be(expectedValueLiteral);
      });

      it('should have the property updated (base name: "updated")', function() {
        // TODO: update the code to test the property updated
        expect(instance).to.have.property('updated');
        // expect(instance.updated).to.be(expectedValueLiteral);
      });

      it('should have the property graderId (base name: "grader_id")', function() {
        // TODO: update the code to test the property graderId
        expect(instance).to.have.property('graderId');
        // expect(instance.graderId).to.be(expectedValueLiteral);
      });

      it('should have the property submissionData (base name: "submission_data")', function() {
        // TODO: update the code to test the property submissionData
        expect(instance).to.have.property('submissionData');
        // expect(instance.submissionData).to.be(expectedValueLiteral);
      });

      it('should have the property status (base name: "status")', function() {
        // TODO: update the code to test the property status
        expect(instance).to.have.property('status');
        // expect(instance.status).to.be(expectedValueLiteral);
      });

      it('should have the property output (base name: "output")', function() {
        // TODO: update the code to test the property output
        expect(instance).to.have.property('output');
        // expect(instance.output).to.be(expectedValueLiteral);
      });

      it('should have the property additionalOutputs (base name: "additional_outputs")', function() {
        // TODO: update the code to test the property additionalOutputs
        expect(instance).to.have.property('additionalOutputs');
        // expect(instance.additionalOutputs).to.be(expectedValueLiteral);
      });

      it('should have the property logs (base name: "logs")', function() {
        // TODO: update the code to test the property logs
        expect(instance).to.have.property('logs');
        // expect(instance.logs).to.be(expectedValueLiteral);
      });

      it('should have the property started (base name: "started")', function() {
        // TODO: update the code to test the property started
        expect(instance).to.have.property('started');
        // expect(instance.started).to.be(expectedValueLiteral);
      });

      it('should have the property ended (base name: "ended")', function() {
        // TODO: update the code to test the property ended
        expect(instance).to.have.property('ended');
        // expect(instance.ended).to.be(expectedValueLiteral);
      });

      it('should have the property meta (base name: "meta")', function() {
        // TODO: update the code to test the property meta
        expect(instance).to.have.property('meta');
        // expect(instance.meta).to.be(expectedValueLiteral);
      });

      it('should have the property wfName (base name: "wf_name")', function() {
        // TODO: update the code to test the property wfName
        expect(instance).to.have.property('wfName');
        // expect(instance.wfName).to.be(expectedValueLiteral);
      });

      it('should have the property workflowPriority (base name: "workflow_priority")', function() {
        // TODO: update the code to test the property workflowPriority
        expect(instance).to.have.property('workflowPriority');
        // expect(instance.workflowPriority).to.be(expectedValueLiteral);
      });

      it('should have the property userId (base name: "user_id")', function() {
        // TODO: update the code to test the property userId
        expect(instance).to.have.property('userId');
        // expect(instance.userId).to.be(expectedValueLiteral);
      });

      it('should have the property organisationId (base name: "organisation_id")', function() {
        // TODO: update the code to test the property organisationId
        expect(instance).to.have.property('organisationId');
        // expect(instance.organisationId).to.be(expectedValueLiteral);
      });

    });
  });

}));
