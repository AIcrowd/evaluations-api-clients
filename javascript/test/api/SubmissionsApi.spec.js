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

  beforeEach(function() {
    instance = new EvaluationsApi.SubmissionsApi();
  });

  describe('(package)', function() {
    describe('SubmissionsApi', function() {
      describe('deleteSubmissionDao', function() {
        it('should call deleteSubmissionDao successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteSubmissionDao call
          /*
          var submissionId = 56;

          instance.deleteSubmissionDao(submissionId, function(error, data, response) {
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
      describe('getSubmissionDao', function() {
        it('should call getSubmissionDao successfully', function(done) {
          // TODO: uncomment, update parameter values for getSubmissionDao call and complete the assertions
          /*
          var submissionId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getSubmissionDao(submissionId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(EvaluationsApi.Submissions);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.participantId).to.be.a('number');
            expect(data.participantId).to.be(0);
            expect(data.roundId).to.be.a('number');
            expect(data.roundId).to.be(0);
            expect(data.graderId).to.be.a('number');
            expect(data.graderId).to.be(0);
            expect(data.submissionCode).to.be.a('string');
            expect(data.submissionCode).to.be("");
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.output).to.be.a('string');
            expect(data.output).to.be("");
            expect(data.additionalOutputs).to.be.a('string');
            expect(data.additionalOutputs).to.be("");
            expect(data.logs).to.be.a(Object);
            expect(data.logs).to.be();
            expect(data.started).to.be.a(Date);
            expect(data.started).to.be(new Date());
            expect(data.ended).to.be.a(Date);
            expect(data.ended).to.be(new Date());
            expect(data.meta).to.be.a(Object);
            expect(data.meta).to.be();
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
      describe('getSubmissionListDao', function() {
        it('should call getSubmissionListDao successfully', function(done) {
          // TODO: uncomment, update parameter values for getSubmissionListDao call and complete the assertions
          /*
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getSubmissionListDao(opts, function(error, data, response) {
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
              expect(data).to.be.a(EvaluationsApi.Submissions);
              expect(data.id).to.be.a('number');
              expect(data.id).to.be(0);
              expect(data.created).to.be.a(Date);
              expect(data.created).to.be(new Date());
              expect(data.updated).to.be.a(Date);
              expect(data.updated).to.be(new Date());
              expect(data.participantId).to.be.a('number');
              expect(data.participantId).to.be(0);
              expect(data.roundId).to.be.a('number');
              expect(data.roundId).to.be(0);
              expect(data.graderId).to.be.a('number');
              expect(data.graderId).to.be(0);
              expect(data.submissionCode).to.be.a('string');
              expect(data.submissionCode).to.be("");
              expect(data.status).to.be.a('string');
              expect(data.status).to.be("");
              expect(data.output).to.be.a('string');
              expect(data.output).to.be("");
              expect(data.additionalOutputs).to.be.a('string');
              expect(data.additionalOutputs).to.be("");
              expect(data.logs).to.be.a(Object);
              expect(data.logs).to.be();
              expect(data.started).to.be.a(Date);
              expect(data.started).to.be(new Date());
              expect(data.ended).to.be.a(Date);
              expect(data.ended).to.be(new Date());
              expect(data.meta).to.be.a(Object);
              expect(data.meta).to.be();
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
      describe('postSubmissionListDao', function() {
        it('should call postSubmissionListDao successfully', function(done) {
          // TODO: uncomment, update parameter values for postSubmissionListDao call and complete the assertions
          /*
          var payload = new EvaluationsApi.Submissions();
          payload.participantId = 0;
          payload.roundId = 0;
          payload.graderId = 0;
          payload.submissionCode = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.postSubmissionListDao(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(EvaluationsApi.Submissions);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.created).to.be.a(Date);
            expect(data.created).to.be(new Date());
            expect(data.updated).to.be.a(Date);
            expect(data.updated).to.be(new Date());
            expect(data.participantId).to.be.a('number');
            expect(data.participantId).to.be(0);
            expect(data.roundId).to.be.a('number');
            expect(data.roundId).to.be(0);
            expect(data.graderId).to.be.a('number');
            expect(data.graderId).to.be(0);
            expect(data.submissionCode).to.be.a('string');
            expect(data.submissionCode).to.be("");
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.output).to.be.a('string');
            expect(data.output).to.be("");
            expect(data.additionalOutputs).to.be.a('string');
            expect(data.additionalOutputs).to.be("");
            expect(data.logs).to.be.a(Object);
            expect(data.logs).to.be();
            expect(data.started).to.be.a(Date);
            expect(data.started).to.be(new Date());
            expect(data.ended).to.be.a(Date);
            expect(data.ended).to.be(new Date());
            expect(data.meta).to.be.a(Object);
            expect(data.meta).to.be();
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
