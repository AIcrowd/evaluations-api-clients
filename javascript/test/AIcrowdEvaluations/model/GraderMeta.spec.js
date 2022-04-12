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
    describe('GraderMeta', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.GraderMeta();
      });

      it('should create an instance of GraderMeta', function() {
        // TODO: update the code to test GraderMeta
        expect(instance).to.be.a(AicrowdEvaluations.GraderMeta);
      });

      it('should have the property dataset (base name: "dataset")', function() {
        // TODO: update the code to test the property dataset
        expect(instance).to.have.property('dataset');
        // expect(instance.dataset).to.be(expectedValueLiteral);
      });

      it('should have the property notifications (base name: "notifications")', function() {
        // TODO: update the code to test the property notifications
        expect(instance).to.have.property('notifications');
        // expect(instance.notifications).to.be(expectedValueLiteral);
      });

      it('should have the property name (base name: "name")', function() {
        // TODO: update the code to test the property name
        expect(instance).to.have.property('name');
        // expect(instance.name).to.be(expectedValueLiteral);
      });

      it('should have the property description (base name: "description")', function() {
        // TODO: update the code to test the property description
        expect(instance).to.have.property('description');
        // expect(instance.description).to.be(expectedValueLiteral);
      });

      it('should have the property clusterId (base name: "cluster_id")', function() {
        // TODO: update the code to test the property clusterId
        expect(instance).to.have.property('clusterId');
        // expect(instance.clusterId).to.be(expectedValueLiteral);
      });

      it('should have the property meta (base name: "meta")', function() {
        // TODO: update the code to test the property meta
        expect(instance).to.have.property('meta');
        // expect(instance.meta).to.be(expectedValueLiteral);
      });

    });
  });

}));
