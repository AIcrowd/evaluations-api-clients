/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.18
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

  beforeEach(function() {
    instance = new AicrowdEvaluations.ClustersApi();
  });

  describe('AIcrowdEvaluations', function() {
    describe('ClustersApi', function() {
      describe('createCluster', function() {
        it('should call createCluster successfully', function(done) {
          // TODO: uncomment, update parameter values for createCluster call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.Cluster();
          payload.remoteAddress = "";
          payload.authToken = "";
          payload.dockerUsername = "";
          payload.dockerRegistry = "";
          payload.namespace = "";
          payload.storageClass = "";
          payload.argoToken = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.createCluster(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Cluster);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.remoteAddress).to.be.a('string');
            expect(data.remoteAddress).to.be("");
            expect(data.authToken).to.be.a('string');
            expect(data.authToken).to.be("");
            expect(data.dockerUsername).to.be.a('string');
            expect(data.dockerUsername).to.be("");
            expect(data.dockerRegistry).to.be.a('string');
            expect(data.dockerRegistry).to.be("");
            expect(data.namespace).to.be.a('string');
            expect(data.namespace).to.be("");
            expect(data.storageClass).to.be.a('string');
            expect(data.storageClass).to.be("");
            expect(data.status).to.be.a('boolean');
            expect(data.status).to.be(false);
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
            expect(data.argoHost).to.be.a('string');
            expect(data.argoHost).to.be("");
            expect(data.argoToken).to.be.a('string');
            expect(data.argoToken).to.be("");
            expect(data.userId).to.be.a('number');
            expect(data.userId).to.be(0);
            expect(data.organisationId).to.be.a('number');
            expect(data.organisationId).to.be(0);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('deleteCluster', function() {
        it('should call deleteCluster successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteCluster call
          /*
          var clusterId = 56;

          instance.deleteCluster(clusterId, function(error, data, response) {
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
      describe('getCluster', function() {
        it('should call getCluster successfully', function(done) {
          // TODO: uncomment, update parameter values for getCluster call and complete the assertions
          /*
          var clusterId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getCluster(clusterId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Cluster);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.remoteAddress).to.be.a('string');
            expect(data.remoteAddress).to.be("");
            expect(data.authToken).to.be.a('string');
            expect(data.authToken).to.be("");
            expect(data.dockerUsername).to.be.a('string');
            expect(data.dockerUsername).to.be("");
            expect(data.dockerRegistry).to.be.a('string');
            expect(data.dockerRegistry).to.be("");
            expect(data.namespace).to.be.a('string');
            expect(data.namespace).to.be("");
            expect(data.storageClass).to.be.a('string');
            expect(data.storageClass).to.be("");
            expect(data.status).to.be.a('boolean');
            expect(data.status).to.be(false);
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
            expect(data.argoHost).to.be.a('string');
            expect(data.argoHost).to.be("");
            expect(data.argoToken).to.be.a('string');
            expect(data.argoToken).to.be("");
            expect(data.userId).to.be.a('number');
            expect(data.userId).to.be(0);
            expect(data.organisationId).to.be.a('number');
            expect(data.organisationId).to.be(0);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('listClusters', function() {
        it('should call listClusters successfully', function(done) {
          // TODO: uncomment, update parameter values for listClusters call and complete the assertions
          /*
          var opts = {};
          opts.xFields = "xFields_example";

          instance.listClusters(opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            let dataCtr = data;
            expect(dataCtr).to.be.an(Array);
            expect(dataCtr).to.not.be.empty();
            for (let p in dataCtr) {
              let data = dataCtr[p];
              expect(data).to.be.a(AicrowdEvaluations.Cluster);
              expect(data.id).to.be.a('number');
              expect(data.id).to.be(0);
              expect(data.created).to.be.a(Date);
              expect(data.created).to.be(new Date());
              expect(data.updated).to.be.a(Date);
              expect(data.updated).to.be(new Date());
              expect(data.remoteAddress).to.be.a('string');
              expect(data.remoteAddress).to.be("");
              expect(data.authToken).to.be.a('string');
              expect(data.authToken).to.be("");
              expect(data.dockerUsername).to.be.a('string');
              expect(data.dockerUsername).to.be("");
              expect(data.dockerRegistry).to.be.a('string');
              expect(data.dockerRegistry).to.be("");
              expect(data.namespace).to.be.a('string');
              expect(data.namespace).to.be("");
              expect(data.storageClass).to.be.a('string');
              expect(data.storageClass).to.be("");
              expect(data.status).to.be.a('boolean');
              expect(data.status).to.be(false);
              expect(data.wfName).to.be.a('string');
              expect(data.wfName).to.be("");
              expect(data.argoHost).to.be.a('string');
              expect(data.argoHost).to.be("");
              expect(data.argoToken).to.be.a('string');
              expect(data.argoToken).to.be("");
              expect(data.userId).to.be.a('number');
              expect(data.userId).to.be(0);
              expect(data.organisationId).to.be.a('number');
              expect(data.organisationId).to.be(0);
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
