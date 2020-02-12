import * as api from './api/api';
import * as angular from 'angular';

const apiModule = angular.module('api', [])
.service('ArgoApi', api.ArgoApi)
.service('AuthApi', api.AuthApi)
.service('ClustersApi', api.ClustersApi)
.service('GradersApi', api.GradersApi)
.service('OrganisationsApi', api.OrganisationsApi)
.service('SubmissionsApi', api.SubmissionsApi)
.service('UsersApi', api.UsersApi)

export default apiModule;
