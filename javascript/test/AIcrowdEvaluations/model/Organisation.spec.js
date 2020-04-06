/*
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.13
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
    describe('Organisation', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.Organisation();
      });

      it('should create an instance of Organisation', function() {
        // TODO: update the code to test Organisation
        expect(instance).to.be.a(AicrowdEvaluations.Organisation);
      });

      it('should have the property id (base name: "id")', function() {
        // TODO: update the code to test the property id
        expect(instance).to.have.property('id');
        // expect(instance.id).to.be(expectedValueLiteral);
      });

      it('should have the property name (base name: "name")', function() {
        // TODO: update the code to test the property name
        expect(instance).to.have.property('name');
        // expect(instance.name).to.be(expectedValueLiteral);
      });

      it('should have the property pocEmail (base name: "poc_email")', function() {
        // TODO: update the code to test the property pocEmail
        expect(instance).to.have.property('pocEmail');
        // expect(instance.pocEmail).to.be(expectedValueLiteral);
      });

      it('should have the property createdOn (base name: "created_on")', function() {
        // TODO: update the code to test the property createdOn
        expect(instance).to.have.property('createdOn');
        // expect(instance.createdOn).to.be(expectedValueLiteral);
      });

      it('should have the property totalQuota (base name: "total_quota")', function() {
        // TODO: update the code to test the property totalQuota
        expect(instance).to.have.property('totalQuota');
        // expect(instance.totalQuota).to.be(expectedValueLiteral);
      });

      it('should have the property quota (base name: "quota")', function() {
        // TODO: update the code to test the property quota
        expect(instance).to.have.property('quota');
        // expect(instance.quota).to.be(expectedValueLiteral);
      });

    });
  });

}));
