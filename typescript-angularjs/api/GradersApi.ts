/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
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
     * Archive a grader
     * @param graderId 
     */
    public archiveGrader (graderId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/graders/{grader_id}/archive'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling archiveGrader.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
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
    public createGrader (payload: models.Grader, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Grader> {
        const localVarPath = this.basePath + '/graders/';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'payload' is not null or undefined
        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling createGrader.');
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
     * Delete a grader by its ID
     * @param graderId 
     */
    public deleteGrader (graderId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/graders/{grader_id}'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling deleteGrader.');
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
     * Get details of a grader by its ID
     * @param graderId 
     * @param xFields An optional fields mask
     */
    public getGrader (graderId: number, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Grader> {
        const localVarPath = this.basePath + '/graders/{grader_id}'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling getGrader.');
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
     * Get the grader logs by submission ID
     * @param graderId 
     */
    public getGraderLogs (graderId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/graders/{grader_id}/logs'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling getGraderLogs.');
        }

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
     * List all graders available
     * @param perPage Results to display per page
     * @param page Page number
     * @param meta Fetch graders containing this meta value
     * @param name Fetch grader containing name
     * @param status Fetch graders with this status
     * @param userId Fetch graders created by the user
     * @param xFields An optional fields mask
     */
    public listGraders (perPage?: string, page?: string, meta?: string, name?: string, status?: string, userId?: number, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.Grader>> {
        const localVarPath = this.basePath + '/graders/';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        if (perPage !== undefined) {
            queryParameters['per_page'] = perPage;
        }

        if (page !== undefined) {
            queryParameters['page'] = page;
        }

        if (meta !== undefined) {
            queryParameters['meta'] = meta;
        }

        if (name !== undefined) {
            queryParameters['name'] = name;
        }

        if (status !== undefined) {
            queryParameters['status'] = status;
        }

        if (userId !== undefined) {
            queryParameters['user_id'] = userId;
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
     * Unarchive a grader
     * @param graderId 
     */
    public unarchiveGrader (graderId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/graders/{grader_id}/unarchive'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling unarchiveGrader.');
        }

        let httpRequestParams: ng.IRequestConfig = {
            method: 'POST',
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
     * Update meta details of a grader by its ID. Warning: There is no data validation.
     * @param graderId 
     * @param payload 
     * @param xFields An optional fields mask
     */
    public updateGrader (graderId: number, payload: models.GraderMeta, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Grader> {
        const localVarPath = this.basePath + '/graders/{grader_id}'
            .replace('{' + 'grader_id' + '}', encodeURIComponent(String(graderId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'graderId' is not null or undefined
        if (graderId === null || graderId === undefined) {
            throw new Error('Required parameter graderId was null or undefined when calling updateGrader.');
        }

        // verify required parameter 'payload' is not null or undefined
        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling updateGrader.');
        }

        headerParams['X-Fields'] = xFields;

        let httpRequestParams: ng.IRequestConfig = {
            method: 'PATCH',
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
