/**
 * Evaluations API
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

import * as models from '../model/models';

/* tslint:disable:no-unused-variable member-ordering */

export class GradersApi {
    protected basePath = 'https://localhost/v1';
    public defaultHeaders : any = {};

    static $inject: string[] = ['$http', '$httpParamSerializer', 'basePath'];

    constructor(protected $http: ng.IHttpService, protected $httpParamSerializer?: (d: any) => any, basePath?: string) {
        if (basePath !== undefined) {
            this.basePath = basePath;
        }
    }

    /**
     * Delete a grader
     * @param graderId 
     */
    public deleteGraderDao (graderId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/graders/{grader_id}'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling deleteGraderDao.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'DELETE',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Get information of a grader
     * @param graderId 
     * @param xFields An optional fields mask
     */
    public getGraderDao (graderId: number, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Grader> {
        const localVarPath = this.basePath + '/graders/{grader_id}'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling getGraderDao.');
        }

        headerParams['X-Fields'] = xFields;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Get all grader
     * @param xFields An optional fields mask
     */
    public getGraderListDao (xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.Grader>> {
        const localVarPath = this.basePath + '/graders/';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        headerParams['X-Fields'] = xFields;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'GET',
            url: localVarPath,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Create a new grader
     * @param payload 
     * @param xFields An optional fields mask
     */
    public postGraderListDao (payload: models.Grader, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Grader> {
        const localVarPath = this.basePath + '/graders/';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'payload' is not null or undefined
        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling postGraderListDao.');
        }

        headerParams['X-Fields'] = xFields;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
            url: localVarPath,
            data: payload,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
    /**
     * Update a grader
     * @param graderId 
     * @param payload 
     * @param xFields An optional fields mask
     */
    public putGraderDao (graderId: number, payload: models.Grader, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Grader> {
        const localVarPath = this.basePath + '/graders/{grader_id}'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling putGraderDao.');
        }

        // verify required parameter 'payload' is not null or undefined
        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling putGraderDao.');
        }

        headerParams['X-Fields'] = xFields;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'PUT',
            url: localVarPath,
            data: payload,
            params: queryParameters,
            headers: headerParams
        };

        if (extraHttpRequestParams) {
            httpRequestParams = (<any>Object).assign(httpRequestParams, extraHttpRequestParams);
        }

        return this.$http(httpRequestParams);
    }
}
