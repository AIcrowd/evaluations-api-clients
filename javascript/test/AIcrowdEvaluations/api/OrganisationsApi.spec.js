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
    instance = new AicrowdEvaluations.OrganisationsApi();
  });

  describe('AIcrowdEvaluations', function() {
    describe('OrganisationsApi', function() {
      describe('createOrganisation', function() {
        it('should call createOrganisation successfully', function(done) {
          // TODO: uncomment, update parameter values for createOrganisation call and complete the assertions
          /*
          var payload = new AicrowdEvaluations.Organisation();
          payload.name = "";
          payload.pocEmail = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.createOrganisation(payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Organisation);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.name).to.be.a('string');
            expect(data.name).to.be("");
            expect(data.pocEmail).to.be.a('string');
            expect(data.pocEmail).to.be("");
            expect(data.createdOn).to.be.a(Date);
            expect(data.createdOn).to.be(new Date());
            expect(data.totalQuota).to.be.a('number');
            expect(data.totalQuota).to.be(0);
            expect(data.quota).to.be.a('number');
            expect(data.quota).to.be(0);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('deleteOrganisation', function() {
        it('should call deleteOrganisation successfully', function(done) {
          // TODO: uncomment, update parameter values for deleteOrganisation call
          /*
          var organisationId = 56;

          instance.deleteOrganisation(organisationId, function(error, data, response) {
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
      describe('getOrganisation', function() {
        it('should call getOrganisation successfully', function(done) {
          // TODO: uncomment, update parameter values for getOrganisation call and complete the assertions
          /*
          var organisationId = 56;
          var opts = {};
          opts.xFields = "xFields_example";

          instance.getOrganisation(organisationId, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Organisation);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.name).to.be.a('string');
            expect(data.name).to.be("");
            expect(data.pocEmail).to.be.a('string');
            expect(data.pocEmail).to.be("");
            expect(data.createdOn).to.be.a(Date);
            expect(data.createdOn).to.be(new Date());
            expect(data.totalQuota).to.be.a('number');
            expect(data.totalQuota).to.be(0);
            expect(data.quota).to.be.a('number');
            expect(data.quota).to.be(0);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('listOrganisations', function() {
        it('should call listOrganisations successfully', function(done) {
          // TODO: uncomment, update parameter values for listOrganisations call and complete the assertions
          /*
          var opts = {};
          opts.xFields = "xFields_example";

          instance.listOrganisations(opts, function(error, data, response) {
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
              expect(data).to.be.a(AicrowdEvaluations.Organisation);
              expect(data.id).to.be.a('number');
              expect(data.id).to.be(0);
              expect(data.name).to.be.a('string');
              expect(data.name).to.be("");
              expect(data.pocEmail).to.be.a('string');
              expect(data.pocEmail).to.be("");
              expect(data.createdOn).to.be.a(Date);
              expect(data.createdOn).to.be(new Date());
              expect(data.totalQuota).to.be.a('number');
              expect(data.totalQuota).to.be(0);
              expect(data.quota).to.be.a('number');
              expect(data.quota).to.be(0);
            }

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateOrganisation', function() {
        it('should call updateOrganisation successfully', function(done) {
          // TODO: uncomment, update parameter values for updateOrganisation call and complete the assertions
          /*
          var organisationId = 56;
          var payload = new AicrowdEvaluations.Organisation();
          payload.name = "";
          payload.pocEmail = "";
          var opts = {};
          opts.xFields = "xFields_example";

          instance.updateOrganisation(organisationId, payload, opts, function(error, data, response) {
            if (error) {
              done(error);
              return;
            }
            // TODO: update response assertions
            expect(data).to.be.a(AicrowdEvaluations.Organisation);
            expect(data.id).to.be.a('number');
            expect(data.id).to.be(0);
            expect(data.name).to.be.a('string');
            expect(data.name).to.be("");
            expect(data.pocEmail).to.be.a('string');
            expect(data.pocEmail).to.be("");
            expect(data.createdOn).to.be.a(Date);
            expect(data.createdOn).to.be(new Date());
            expect(data.totalQuota).to.be.a('number');
            expect(data.totalQuota).to.be(0);
            expect(data.quota).to.be.a('number');
            expect(data.quota).to.be(0);

            done();
          });
          */
          // TODO: uncomment and complete method invocation above, then delete this line and the next:
          done();
        });
      });
      describe('updateOrganisationQuota', function() {
        it('should call updateOrganisationQuota successfully', function(done) {
          // TODO: uncomment, update parameter values for updateOrganisationQuota call
          /*
          var organisationId = 56;
          var payload = new AicrowdEvaluations.OrganisationQuota();
          payload.quota = 0;

          instance.updateOrganisationQuota(organisationId, payload, function(error, data, response) {
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
