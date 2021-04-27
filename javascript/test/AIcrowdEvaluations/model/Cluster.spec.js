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
    describe('Cluster', function() {
      beforeEach(function() {
        instance = new AicrowdEvaluations.Cluster();
      });

      it('should create an instance of Cluster', function() {
        // TODO: update the code to test Cluster
        expect(instance).to.be.a(AicrowdEvaluations.Cluster);
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

      it('should have the property remoteAddress (base name: "remote_address")', function() {
        // TODO: update the code to test the property remoteAddress
        expect(instance).to.have.property('remoteAddress');
        // expect(instance.remoteAddress).to.be(expectedValueLiteral);
      });

      it('should have the property authToken (base name: "auth_token")', function() {
        // TODO: update the code to test the property authToken
        expect(instance).to.have.property('authToken');
        // expect(instance.authToken).to.be(expectedValueLiteral);
      });

      it('should have the property dockerUsername (base name: "docker_username")', function() {
        // TODO: update the code to test the property dockerUsername
        expect(instance).to.have.property('dockerUsername');
        // expect(instance.dockerUsername).to.be(expectedValueLiteral);
      });

      it('should have the property dockerRegistry (base name: "docker_registry")', function() {
        // TODO: update the code to test the property dockerRegistry
        expect(instance).to.have.property('dockerRegistry');
        // expect(instance.dockerRegistry).to.be(expectedValueLiteral);
      });

      it('should have the property namespace (base name: "namespace")', function() {
        // TODO: update the code to test the property namespace
        expect(instance).to.have.property('namespace');
        // expect(instance.namespace).to.be(expectedValueLiteral);
      });

      it('should have the property storageClass (base name: "storage_class")', function() {
        // TODO: update the code to test the property storageClass
        expect(instance).to.have.property('storageClass');
        // expect(instance.storageClass).to.be(expectedValueLiteral);
      });

      it('should have the property status (base name: "status")', function() {
        // TODO: update the code to test the property status
        expect(instance).to.have.property('status');
        // expect(instance.status).to.be(expectedValueLiteral);
      });

      it('should have the property wfName (base name: "wf_name")', function() {
        // TODO: update the code to test the property wfName
        expect(instance).to.have.property('wfName');
        // expect(instance.wfName).to.be(expectedValueLiteral);
      });

      it('should have the property argoHost (base name: "argo_host")', function() {
        // TODO: update the code to test the property argoHost
        expect(instance).to.have.property('argoHost');
        // expect(instance.argoHost).to.be(expectedValueLiteral);
      });

      it('should have the property argoToken (base name: "argo_token")', function() {
        // TODO: update the code to test the property argoToken
        expect(instance).to.have.property('argoToken');
        // expect(instance.argoToken).to.be(expectedValueLiteral);
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
