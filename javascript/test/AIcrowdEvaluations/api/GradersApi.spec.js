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

  beforeEach(function() {
    instance = new AicrowdEvaluations.GradersApi();
  });

  describe('AIcrowdEvaluations', function() {
    describe('GradersApi', function() {
      describe('deleteGraderDao', function() {
        it('should call deleteGraderDao successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteGraderDao call
          /*
          var graderId = 56;

          instance.deleteGraderDao(graderId, function(error, data, response) {
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
      describe('getGraderDao', function() {
        it('should call getGraderDao successfully', function(done) {
          // TODO: uncomment, update parameter values for getGraderDao call and complete the assertions
          /*
          var graderId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getGraderDao(graderId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Grader);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.dataset).to.be.a(Object);
            expect(data.dataset).to.be();
            expect(data.clusterId).to.be.a('number');
            expect(data.clusterId).to.be(0);
            expect(data.workflowSpec).to.be.a(Object);
            expect(data.workflowSpec).to.be();
            expect(data.evaluatorRepo).to.be.a('string');
            expect(data.evaluatorRepo).to.be("");
            expect(data.evaluatorRepoTag).to.be.a('string');
            expect(data.evaluatorRepoTag).to.be("");
            expect(data.logs).to.be.a(Object);
            expect(data.logs).to.be();
            expect(data.meta).to.be.a(Object);
            expect(data.meta).to.be();
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.submissionTypes).to.be.a(Object);
            expect(data.submissionTypes).to.be();
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
      describe('getGraderListDao', function() {
        it('should call getGraderListDao successfully', function(done) {
          // TODO: uncomment, update parameter values for getGraderListDao call and complete the assertions
          /*
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getGraderListDao(opts, function(error, data, response) {
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
              expect(data).to.be.a(AicrowdEvaluations.Grader);
              expect(data.id).to.be.a('number');
              expect(data.id).to.be(0);
              expect(data.created).to.be.a(Date);
              expect(data.created).to.be(new Date());
              expect(data.updated).to.be.a(Date);
              expect(data.updated).to.be(new Date());
              expect(data.dataset).to.be.a(Object);
              expect(data.dataset).to.be();
              expect(data.clusterId).to.be.a('number');
              expect(data.clusterId).to.be(0);
              expect(data.workflowSpec).to.be.a(Object);
              expect(data.workflowSpec).to.be();
              expect(data.evaluatorRepo).to.be.a('string');
              expect(data.evaluatorRepo).to.be("");
              expect(data.evaluatorRepoTag).to.be.a('string');
              expect(data.evaluatorRepoTag).to.be("");
              expect(data.logs).to.be.a(Object);
              expect(data.logs).to.be();
              expect(data.meta).to.be.a(Object);
              expect(data.meta).to.be();
              expect(data.status).to.be.a('string');
              expect(data.status).to.be("");
              expect(data.submissionTypes).to.be.a(Object);
              expect(data.submissionTypes).to.be();
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
      describe('postGraderListDao', function() {
        it('should call postGraderListDao successfully', function(done) {
          // TODO: uncomment, update parameter values for postGraderListDao call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.Grader();
          payload.clusterId = 0;
          payload.evaluatorRepo = "";
          payload.evaluatorRepoTag = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.postGraderListDao(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Grader);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.dataset).to.be.a(Object);
            expect(data.dataset).to.be();
            expect(data.clusterId).to.be.a('number');
            expect(data.clusterId).to.be(0);
            expect(data.workflowSpec).to.be.a(Object);
            expect(data.workflowSpec).to.be();
            expect(data.evaluatorRepo).to.be.a('string');
            expect(data.evaluatorRepo).to.be("");
            expect(data.evaluatorRepoTag).to.be.a('string');
            expect(data.evaluatorRepoTag).to.be("");
            expect(data.logs).to.be.a(Object);
            expect(data.logs).to.be();
            expect(data.meta).to.be.a(Object);
            expect(data.meta).to.be();
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.submissionTypes).to.be.a(Object);
            expect(data.submissionTypes).to.be();
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
    });
  });

}));
