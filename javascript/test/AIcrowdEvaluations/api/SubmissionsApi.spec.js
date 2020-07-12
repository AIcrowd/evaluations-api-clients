/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.14
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
    instance = new AicrowdEvaluations.SubmissionsApi();
  });

  describe('AIcrowdEvaluations', function() {
    describe('SubmissionsApi', function() {
      describe('createSubmission', function() {
        it('should call createSubmission successfully', function(done) {
          // TODO: uncomment, update parameter values for createSubmission call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.Submissions();
          payload.graderId = 0;
          payload.submissionData = ;
          payload.meta = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.createSubmission(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Submissions);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.graderId).to.be.a('number');
            expect(data.graderId).to.be(0);
            expect(data.submissionData).to.be.a(Object);
            expect(data.submissionData).to.be();
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.output).to.be.a('string');
            expect(data.output).to.be("");
            expect(data.additionalOutputs).to.be.a(Object);
            expect(data.additionalOutputs).to.be();
            expect(data.logs).to.be.a('string');
            expect(data.logs).to.be("");
            expect(data.started).to.be.a(Date);
            expect(data.started).to.be(new Date());
            expect(data.ended).to.be.a(Date);
            expect(data.ended).to.be(new Date());
            expect(data.meta).to.be.a('string');
            expect(data.meta).to.be("");
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
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
      describe('deleteSubmission', function() {
        it('should call deleteSubmission successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteSubmission call
          /*
          var submissionId = 56;

          instance.deleteSubmission(submissionId, function(error, data, response) {
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
      describe('getSubmission', function() {
        it('should call getSubmission successfully', function(done) {
          // TODO: uncomment, update parameter values for getSubmission call and complete the assertions
          /*
          var submissionId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getSubmission(submissionId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Submissions);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.graderId).to.be.a('number');
            expect(data.graderId).to.be(0);
            expect(data.submissionData).to.be.a(Object);
            expect(data.submissionData).to.be();
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.output).to.be.a('string');
            expect(data.output).to.be("");
            expect(data.additionalOutputs).to.be.a(Object);
            expect(data.additionalOutputs).to.be();
            expect(data.logs).to.be.a('string');
            expect(data.logs).to.be("");
            expect(data.started).to.be.a(Date);
            expect(data.started).to.be(new Date());
            expect(data.ended).to.be.a(Date);
            expect(data.ended).to.be(new Date());
            expect(data.meta).to.be.a('string');
            expect(data.meta).to.be("");
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
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
      describe('getSubmissionData', function() {
        it('should call getSubmissionData successfully', function(done) {
          // TODO: uncomment, update parameter values for getSubmissionData call
          /*
          var submissionId = 56;

          instance.getSubmissionData(submissionId, function(error, data, response) {
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
      describe('getSubmissionLogs', function() {
        it('should call getSubmissionLogs successfully', function(done) {
          // TODO: uncomment, update parameter values for getSubmissionLogs call
          /*
          var submissionId = 56;

          instance.getSubmissionLogs(submissionId, function(error, data, response) {
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
      describe('listSubmissions', function() {
        it('should call listSubmissions successfully', function(done) {
          // TODO: uncomment, update parameter values for listSubmissions call and complete the assertions
          /*
          var opts = {};
          opts.meta = "meta_example";
          opts.status = "status_example";
          opts.graderId = 56;
          opts.userId = 56;
          opts.xFields = "xFields_example";

          instance.listSubmissions(opts, function(error, data, response) {
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
              expect(data).to.be.a(AicrowdEvaluations.Submissions);
              expect(data.id).to.be.a('number');
              expect(data.id).to.be(0);
              expect(data.created).to.be.a(Date);
              expect(data.created).to.be(new Date());
              expect(data.updated).to.be.a(Date);
              expect(data.updated).to.be(new Date());
              expect(data.graderId).to.be.a('number');
              expect(data.graderId).to.be(0);
              expect(data.submissionData).to.be.a(Object);
              expect(data.submissionData).to.be();
              expect(data.status).to.be.a('string');
              expect(data.status).to.be("");
              expect(data.output).to.be.a('string');
              expect(data.output).to.be("");
              expect(data.additionalOutputs).to.be.a(Object);
              expect(data.additionalOutputs).to.be();
              expect(data.logs).to.be.a('string');
              expect(data.logs).to.be("");
              expect(data.started).to.be.a(Date);
              expect(data.started).to.be(new Date());
              expect(data.ended).to.be.a(Date);
              expect(data.ended).to.be(new Date());
              expect(data.meta).to.be.a('string');
              expect(data.meta).to.be("");
              expect(data.wfName).to.be.a('string');
              expect(data.wfName).to.be("");
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
      describe('retrySubmissions', function() {
        it('should call retrySubmissions successfully', function(done) {
          // TODO: uncomment, update parameter values for retrySubmissions call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.SubmissionRetryInput();
          payload.submissions = [0];
          var opts = {};
          opts.xFields = "xFields_example";

          instance.retrySubmissions(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.SubmissionRetry);
            expect(data.queued).to.be.a(Object);
            expect(data.queued).to.be();
            {
              let dataCtr = data.failed;
              expect(dataCtr).to.be.an(Array);
              expect(dataCtr).to.not.be.empty();
              for (let p in dataCtr) {
                let data = dataCtr[p];
                expect(data).to.be.a('number');
                expect(data).to.be(0);
              }
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
