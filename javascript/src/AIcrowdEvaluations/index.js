/*
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
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

(function(factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['AIcrowdEvaluations/ApiClient', 'AIcrowdEvaluations/model/AuthLogout', 'AIcrowdEvaluations/model/AuthResponse', 'AIcrowdEvaluations/model/Cluster', 'AIcrowdEvaluations/model/Grader', 'AIcrowdEvaluations/model/GraderMeta', 'AIcrowdEvaluations/model/Login', 'AIcrowdEvaluations/model/Organisation', 'AIcrowdEvaluations/model/OrganisationQuota', 'AIcrowdEvaluations/model/Submissions', 'AIcrowdEvaluations/model/User', 'AIcrowdEvaluations/model/UserQuota', 'AIcrowdEvaluations/api/AuthApi', 'AIcrowdEvaluations/api/ClustersApi', 'AIcrowdEvaluations/api/GradersApi', 'AIcrowdEvaluations/api/OrganisationsApi', 'AIcrowdEvaluations/api/SubmissionsApi', 'AIcrowdEvaluations/api/UsersApi'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('./ApiClient'), require('./model/AuthLogout'), require('./model/AuthResponse'), require('./model/Cluster'), require('./model/Grader'), require('./model/GraderMeta'), require('./model/Login'), require('./model/Organisation'), require('./model/OrganisationQuota'), require('./model/Submissions'), require('./model/User'), require('./model/UserQuota'), require('./api/AuthApi'), require('./api/ClustersApi'), require('./api/GradersApi'), require('./api/OrganisationsApi'), require('./api/SubmissionsApi'), require('./api/UsersApi'));
  }
}(function(ApiClient, AuthLogout, AuthResponse, Cluster, Grader, GraderMeta, Login, Organisation, OrganisationQuota, Submissions, User, UserQuota, AuthApi, ClustersApi, GradersApi, OrganisationsApi, SubmissionsApi, UsersApi) {
  'use strict';

  /**
   * API_to_create_and_evaluate_custom_challenges_on_AIcrowd.<br>
   * The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
   * <p>
   * An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
   * <pre>
   * var AicrowdEvaluations = require('AIcrowdEvaluations/index'); // See note below*.
   * var xxxSvc = new AicrowdEvaluations.XxxApi(); // Allocate the API class we're going to use.
   * var yyyModel = new AicrowdEvaluations.Yyy(); // Construct a model instance.
   * yyyModel.someProperty = 'someValue';
   * ...
   * var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
   * ...
   * </pre>
   * <em>*NOTE: For a top-level AMD script, use require(['AIcrowdEvaluations/index'], function(){...})
   * and put the application logic within the callback function.</em>
   * </p>
   * <p>
   * A non-AMD browser application (discouraged) might do something like this:
   * <pre>
   * var xxxSvc = new AicrowdEvaluations.XxxApi(); // Allocate the API class we're going to use.
   * var yyy = new AicrowdEvaluations.Yyy(); // Construct a model instance.
   * yyyModel.someProperty = 'someValue';
   * ...
   * var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
   * ...
   * </pre>
   * </p>
   * @module AIcrowdEvaluations/index
   * @version 1.0.0
   */
  var exports = {
    /**
     * The ApiClient constructor.
     * @property {module:AIcrowdEvaluations/ApiClient}
     */
    ApiClient: ApiClient,
    /**
     * The AuthLogout model constructor.
     * @property {module:AIcrowdEvaluations/model/AuthLogout}
     */
    AuthLogout: AuthLogout,
    /**
     * The AuthResponse model constructor.
     * @property {module:AIcrowdEvaluations/model/AuthResponse}
     */
    AuthResponse: AuthResponse,
    /**
     * The Cluster model constructor.
     * @property {module:AIcrowdEvaluations/model/Cluster}
     */
    Cluster: Cluster,
    /**
     * The Grader model constructor.
     * @property {module:AIcrowdEvaluations/model/Grader}
     */
    Grader: Grader,
    /**
     * The GraderMeta model constructor.
     * @property {module:AIcrowdEvaluations/model/GraderMeta}
     */
    GraderMeta: GraderMeta,
    /**
     * The Login model constructor.
     * @property {module:AIcrowdEvaluations/model/Login}
     */
    Login: Login,
    /**
     * The Organisation model constructor.
     * @property {module:AIcrowdEvaluations/model/Organisation}
     */
    Organisation: Organisation,
    /**
     * The OrganisationQuota model constructor.
     * @property {module:AIcrowdEvaluations/model/OrganisationQuota}
     */
    OrganisationQuota: OrganisationQuota,
    /**
     * The Submissions model constructor.
     * @property {module:AIcrowdEvaluations/model/Submissions}
     */
    Submissions: Submissions,
    /**
     * The User model constructor.
     * @property {module:AIcrowdEvaluations/model/User}
     */
    User: User,
    /**
     * The UserQuota model constructor.
     * @property {module:AIcrowdEvaluations/model/UserQuota}
     */
    UserQuota: UserQuota,
    /**
     * The AuthApi service constructor.
     * @property {module:AIcrowdEvaluations/api/AuthApi}
     */
    AuthApi: AuthApi,
    /**
     * The ClustersApi service constructor.
     * @property {module:AIcrowdEvaluations/api/ClustersApi}
     */
    ClustersApi: ClustersApi,
    /**
     * The GradersApi service constructor.
     * @property {module:AIcrowdEvaluations/api/GradersApi}
     */
    GradersApi: GradersApi,
    /**
     * The OrganisationsApi service constructor.
     * @property {module:AIcrowdEvaluations/api/OrganisationsApi}
     */
    OrganisationsApi: OrganisationsApi,
    /**
     * The SubmissionsApi service constructor.
     * @property {module:AIcrowdEvaluations/api/SubmissionsApi}
     */
    SubmissionsApi: SubmissionsApi,
    /**
     * The UsersApi service constructor.
     * @property {module:AIcrowdEvaluations/api/UsersApi}
     */
    UsersApi: UsersApi
  };

  return exports;
}));
