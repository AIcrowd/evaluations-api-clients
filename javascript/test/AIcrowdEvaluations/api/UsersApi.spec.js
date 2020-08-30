/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.4.15
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
    instance = new AicrowdEvaluations.UsersApi();
  });

  describe('AIcrowdEvaluations', function() {
    describe('UsersApi', function() {
      describe('createUser', function() {
        it('should call createUser successfully', function(done) {
          // TODO: uncomment, update parameter values for createUser call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.User();
          payload.email = "";
          payload.admin = false;
          payload.organisationId = 0;
          payload.password = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.createUser(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.User);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.email).to.be.a('string');
            expect(data.email).to.be("");
            expect(data.admin).to.be.a('boolean');
            expect(data.admin).to.be(false);
            expect(data.createdOn).to.be.a(Date);
            expect(data.createdOn).to.be(new Date());
            expect(data.passwordHash).to.be.a('string');
            expect(data.passwordHash).to.be("");
            expect(data.totalQuota).to.be.a('number');
            expect(data.totalQuota).to.be(0);
            expect(data.quota).to.be.a('number');
            expect(data.quota).to.be(0);
            expect(data.organisationId).to.be.a('number');
            expect(data.organisationId).to.be(0);
            expect(data.password).to.be.a('string');
            expect(data.password).to.be("");

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('deleteUser', function() {
        it('should call deleteUser successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteUser call
          /*
          var userId = 56;

          instance.deleteUser(userId, function(error, data, response) {
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
      describe('getUser', function() {
        it('should call getUser successfully', function(done) {
          // TODO: uncomment, update parameter values for getUser call and complete the assertions
          /*
          var userId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getUser(userId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.User);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.email).to.be.a('string');
            expect(data.email).to.be("");
            expect(data.admin).to.be.a('boolean');
            expect(data.admin).to.be(false);
            expect(data.createdOn).to.be.a(Date);
            expect(data.createdOn).to.be(new Date());
            expect(data.passwordHash).to.be.a('string');
            expect(data.passwordHash).to.be("");
            expect(data.totalQuota).to.be.a('number');
            expect(data.totalQuota).to.be(0);
            expect(data.quota).to.be.a('number');
            expect(data.quota).to.be(0);
            expect(data.organisationId).to.be.a('number');
            expect(data.organisationId).to.be(0);
            expect(data.password).to.be.a('string');
            expect(data.password).to.be("");

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('listUsers', function() {
        it('should call listUsers successfully', function(done) {
          // TODO: uncomment, update parameter values for listUsers call and complete the assertions
          /*
          var opts = {};
          opts.xFields = "xFields_example";

          instance.listUsers(opts, function(error, data, response) {
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
              expect(data).to.be.a(AicrowdEvaluations.User);
              expect(data.id).to.be.a('number');
              expect(data.id).to.be(0);
              expect(data.email).to.be.a('string');
              expect(data.email).to.be("");
              expect(data.admin).to.be.a('boolean');
              expect(data.admin).to.be(false);
              expect(data.createdOn).to.be.a(Date);
              expect(data.createdOn).to.be(new Date());
              expect(data.passwordHash).to.be.a('string');
              expect(data.passwordHash).to.be("");
              expect(data.totalQuota).to.be.a('number');
              expect(data.totalQuota).to.be(0);
              expect(data.quota).to.be.a('number');
              expect(data.quota).to.be(0);
              expect(data.organisationId).to.be.a('number');
              expect(data.organisationId).to.be(0);
              expect(data.password).to.be.a('string');
              expect(data.password).to.be("");
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateUser', function() {
        it('should call updateUser successfully', function(done) {
          // TODO: uncomment, update parameter values for updateUser call and complete the assertions
          /*
          var userId = 56;
          var payload = new AicrowdEvaluations.User();
          payload.email = "";
          payload.admin = false;
          payload.organisationId = 0;
          payload.password = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.updateUser(userId, payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.User);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.email).to.be.a('string');
            expect(data.email).to.be("");
            expect(data.admin).to.be.a('boolean');
            expect(data.admin).to.be(false);
            expect(data.createdOn).to.be.a(Date);
            expect(data.createdOn).to.be(new Date());
            expect(data.passwordHash).to.be.a('string');
            expect(data.passwordHash).to.be("");
            expect(data.totalQuota).to.be.a('number');
            expect(data.totalQuota).to.be(0);
            expect(data.quota).to.be.a('number');
            expect(data.quota).to.be(0);
            expect(data.organisationId).to.be.a('number');
            expect(data.organisationId).to.be(0);
            expect(data.password).to.be.a('string');
            expect(data.password).to.be("");

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateUserQuota', function() {
        it('should call updateUserQuota successfully', function(done) {
          // TODO: uncomment, update parameter values for updateUserQuota call
          /*
          var userId = 56;
          var payload = new AicrowdEvaluations.UserQuota();
          payload.quota = 0;

          instance.updateUserQuota(userId, payload, function(error, data, response) {
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
    });
  });

}));
