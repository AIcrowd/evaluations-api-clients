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

  beforeEach(function() {
    instance = new AicrowdEvaluations.GradersApi();
  });

  describe('AIcrowdEvaluations', function() {
    describe('GradersApi', function() {
      describe('archiveGrader', function() {
        it('should call archiveGrader successfully', function(done) {
          // TODO: uncomment, update parameter values for archiveGrader call
          /*
          var graderId = 56;

          instance.archiveGrader(graderId, function(error, data, response) {
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
      describe('createGrader', function() {
        it('should call createGrader successfully', function(done) {
          // TODO: uncomment, update parameter values for createGrader call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.Grader();
          payload.clusterId = 0;
          payload.evaluatorRepo = "";
          payload.evaluatorRepoTag = "";
          payload.meta = "";
          payload.secrets = ;
          payload.workflowPriority = 0;
          payload.configPath = "";
          payload.dockerRepo = "";
          payload.contextDir = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.createGrader(payload, opts, function(error, data, response) {
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
            expect(data.archived).to.be.a('boolean');
            expect(data.archived).to.be(false);
            expect(data.dataset).to.be.a(Object);
            expect(data.dataset).to.be();
            expect(data.clusterId).to.be.a('number');
            expect(data.clusterId).to.be(0);
            expect(data.description).to.be.a('string');
            expect(data.description).to.be("");
            expect(data.workflowSpec).to.be.a(Object);
            expect(data.workflowSpec).to.be();
            expect(data.evaluatorRepo).to.be.a('string');
            expect(data.evaluatorRepo).to.be("");
            expect(data.evaluatorRepoTag).to.be.a('string');
            expect(data.evaluatorRepoTag).to.be("");
            expect(data.name).to.be.a('string');
            expect(data.name).to.be("");
            expect(data.notifications).to.be.a('string');
            expect(data.notifications).to.be("");
            expect(data.logs).to.be.a('string');
            expect(data.logs).to.be("");
            expect(data.meta).to.be.a('string');
            expect(data.meta).to.be("");
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.secrets).to.be.a(Object);
            expect(data.secrets).to.be();
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
            expect(data.allowedExtensions).to.be.a(Object);
            expect(data.allowedExtensions).to.be();
            expect(data.workflowPriority).to.be.a('number');
            expect(data.workflowPriority).to.be(0);
            expect(data.configPath).to.be.a('string');
            expect(data.configPath).to.be("");
            expect(data.dockerRepo).to.be.a('string');
            expect(data.dockerRepo).to.be("");
            expect(data.contextDir).to.be.a('string');
            expect(data.contextDir).to.be("");
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
      describe('deleteGrader', function() {
        it('should call deleteGrader successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteGrader call
          /*
          var graderId = 56;

          instance.deleteGrader(graderId, function(error, data, response) {
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
      describe('downloadGraderLogs', function() {
        it('should call downloadGraderLogs successfully', function(done) {
          // TODO: uncomment, update parameter values for downloadGraderLogs call
          /*
          var graderId = 56;

          instance.downloadGraderLogs(graderId, function(error, data, response) {
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
      describe('getGrader', function() {
        it('should call getGrader successfully', function(done) {
          // TODO: uncomment, update parameter values for getGrader call and complete the assertions
          /*
          var graderId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getGrader(graderId, opts, function(error, data, response) {
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
            expect(data.archived).to.be.a('boolean');
            expect(data.archived).to.be(false);
            expect(data.dataset).to.be.a(Object);
            expect(data.dataset).to.be();
            expect(data.clusterId).to.be.a('number');
            expect(data.clusterId).to.be(0);
            expect(data.description).to.be.a('string');
            expect(data.description).to.be("");
            expect(data.workflowSpec).to.be.a(Object);
            expect(data.workflowSpec).to.be();
            expect(data.evaluatorRepo).to.be.a('string');
            expect(data.evaluatorRepo).to.be("");
            expect(data.evaluatorRepoTag).to.be.a('string');
            expect(data.evaluatorRepoTag).to.be("");
            expect(data.name).to.be.a('string');
            expect(data.name).to.be("");
            expect(data.notifications).to.be.a('string');
            expect(data.notifications).to.be("");
            expect(data.logs).to.be.a('string');
            expect(data.logs).to.be("");
            expect(data.meta).to.be.a('string');
            expect(data.meta).to.be("");
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.secrets).to.be.a(Object);
            expect(data.secrets).to.be();
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
            expect(data.allowedExtensions).to.be.a(Object);
            expect(data.allowedExtensions).to.be();
            expect(data.workflowPriority).to.be.a('number');
            expect(data.workflowPriority).to.be(0);
            expect(data.configPath).to.be.a('string');
            expect(data.configPath).to.be("");
            expect(data.dockerRepo).to.be.a('string');
            expect(data.dockerRepo).to.be("");
            expect(data.contextDir).to.be.a('string');
            expect(data.contextDir).to.be("");
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
      describe('getGraderLogs', function() {
        it('should call getGraderLogs successfully', function(done) {
          // TODO: uncomment, update parameter values for getGraderLogs call and complete the assertions
          /*
          var graderId = 56;
          var opts = {};
          opts.step = 56;
          opts.logLines = 56;
          opts.xFields = "xFields_example";

          instance.getGraderLogs(graderId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.GraderLogs);
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.data).to.be.a(Object);
            expect(data.data).to.be();

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('listGraders', function() {
        it('should call listGraders successfully', function(done) {
          // TODO: uncomment, update parameter values for listGraders call and complete the assertions
          /*
          var opts = {};
          opts.perPage = "perPage_example";
          opts.page = "page_example";
          opts.meta = "meta_example";
          opts.name = "name_example";
          opts.status = "status_example";
          opts.userId = 56;
          opts.xFields = "xFields_example";

          instance.listGraders(opts, function(error, data, response) {
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
              expect(data.archived).to.be.a('boolean');
              expect(data.archived).to.be(false);
              expect(data.dataset).to.be.a(Object);
              expect(data.dataset).to.be();
              expect(data.clusterId).to.be.a('number');
              expect(data.clusterId).to.be(0);
              expect(data.description).to.be.a('string');
              expect(data.description).to.be("");
              expect(data.workflowSpec).to.be.a(Object);
              expect(data.workflowSpec).to.be();
              expect(data.evaluatorRepo).to.be.a('string');
              expect(data.evaluatorRepo).to.be("");
              expect(data.evaluatorRepoTag).to.be.a('string');
              expect(data.evaluatorRepoTag).to.be("");
              expect(data.name).to.be.a('string');
              expect(data.name).to.be("");
              expect(data.notifications).to.be.a('string');
              expect(data.notifications).to.be("");
              expect(data.logs).to.be.a('string');
              expect(data.logs).to.be("");
              expect(data.meta).to.be.a('string');
              expect(data.meta).to.be("");
              expect(data.status).to.be.a('string');
              expect(data.status).to.be("");
              expect(data.secrets).to.be.a(Object);
              expect(data.secrets).to.be();
              expect(data.wfName).to.be.a('string');
              expect(data.wfName).to.be("");
              expect(data.allowedExtensions).to.be.a(Object);
              expect(data.allowedExtensions).to.be();
              expect(data.workflowPriority).to.be.a('number');
              expect(data.workflowPriority).to.be(0);
              expect(data.configPath).to.be.a('string');
              expect(data.configPath).to.be("");
              expect(data.dockerRepo).to.be.a('string');
              expect(data.dockerRepo).to.be("");
              expect(data.contextDir).to.be.a('string');
              expect(data.contextDir).to.be("");
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
      describe('unarchiveGrader', function() {
        it('should call unarchiveGrader successfully', function(done) {
          // TODO: uncomment, update parameter values for unarchiveGrader call
          /*
          var graderId = 56;

          instance.unarchiveGrader(graderId, function(error, data, response) {
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
      describe('updateGrader', function() {
        it('should call updateGrader successfully', function(done) {
          // TODO: uncomment, update parameter values for updateGrader call and complete the assertions
          /*
          var graderId = 56;
          var payload = new AicrowdEvaluations.GraderMeta();
          payload.dataset = ;
          payload.notifications = ;
          payload.name = "";
          payload.description = "";
          payload.clusterId = 0;
          payload.meta = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.updateGrader(graderId, payload, opts, function(error, data, response) {
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
            expect(data.archived).to.be.a('boolean');
            expect(data.archived).to.be(false);
            expect(data.dataset).to.be.a(Object);
            expect(data.dataset).to.be();
            expect(data.clusterId).to.be.a('number');
            expect(data.clusterId).to.be(0);
            expect(data.description).to.be.a('string');
            expect(data.description).to.be("");
            expect(data.workflowSpec).to.be.a(Object);
            expect(data.workflowSpec).to.be();
            expect(data.evaluatorRepo).to.be.a('string');
            expect(data.evaluatorRepo).to.be("");
            expect(data.evaluatorRepoTag).to.be.a('string');
            expect(data.evaluatorRepoTag).to.be("");
            expect(data.name).to.be.a('string');
            expect(data.name).to.be("");
            expect(data.notifications).to.be.a('string');
            expect(data.notifications).to.be("");
            expect(data.logs).to.be.a('string');
            expect(data.logs).to.be("");
            expect(data.meta).to.be.a('string');
            expect(data.meta).to.be("");
            expect(data.status).to.be.a('string');
            expect(data.status).to.be("");
            expect(data.secrets).to.be.a(Object);
            expect(data.secrets).to.be();
            expect(data.wfName).to.be.a('string');
            expect(data.wfName).to.be("");
            expect(data.allowedExtensions).to.be.a(Object);
            expect(data.allowedExtensions).to.be();
            expect(data.workflowPriority).to.be.a('number');
            expect(data.workflowPriority).to.be(0);
            expect(data.configPath).to.be.a('string');
            expect(data.configPath).to.be("");
            expect(data.dockerRepo).to.be.a('string');
            expect(data.dockerRepo).to.be("");
            expect(data.contextDir).to.be.a('string');
            expect(data.contextDir).to.be("");
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
