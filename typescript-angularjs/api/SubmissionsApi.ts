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

export class SubmissionsApi {
    protected basePath = 'https://localhost/v1';
    public defaultHeaders : any = {};

    static $inject: string[] = ['$http', '$httpParamSerializer', 'basePath'];

    constructor(protected $http: ng.IHttpService, protected $httpParamSerializer?: (d: any) => any, basePath?: string) {
        if (basePath !== undefined) {
            this.basePath = basePath;
        }
    }

    /**
     * Make a new submission
     * @param payload 
     * @param xFields An optional fields mask
     */
    public createSubmission (payload: models.Submissions, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Submissions> {
        const localVarPath = this.basePath + '/submissions/';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'payload' is not null or undefined
        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling createSubmission.');
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
     * Stop evaluation of a submission and delete it
     * @param submissionId 
     */
    public deleteSubmission (submissionId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/submissions/{submission_id}'
            .replace('{' + 'submission_id' + '}', encodeURIComponent(String(submissionId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'submissionId' is not null or undefined
        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling deleteSubmission.');
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
     * Get the submission logs by submission ID
     * @param submissionId 
     */
    public downloadSubmissionLogs (submissionId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/submissions/{submission_id}/logs/download'
            .replace('{' + 'submission_id' + '}', encodeURIComponent(String(submissionId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'submissionId' is not null or undefined
        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling downloadSubmissionLogs.');
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
     * Get details of a submission by its ID
     * @param submissionId 
     * @param xFields An optional fields mask
     */
    public getSubmission (submissionId: number, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.Submissions> {
        const localVarPath = this.basePath + '/submissions/{submission_id}'
            .replace('{' + 'submission_id' + '}', encodeURIComponent(String(submissionId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'submissionId' is not null or undefined
        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling getSubmission.');
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
     * Get the submission data by submission ID
     * @param submissionId 
     */
    public getSubmissionData (submissionId: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/submissions/{submission_id}/data'
            .replace('{' + 'submission_id' + '}', encodeURIComponent(String(submissionId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'submissionId' is not null or undefined
        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling getSubmissionData.');
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
     * Get submission logs from loki
     * @param submissionId 
     * @param step Granularity of logs
     * @param logLines Number of lines to fetch
     */
    public getSubmissionLogs (submissionId: number, step?: number, logLines?: number, extraHttpRequestParams?: any ) : ng.IHttpPromise<{}> {
        const localVarPath = this.basePath + '/submissions/{submission_id}/logs'
            .replace('{' + 'submission_id' + '}', encodeURIComponent(String(submissionId)));

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'submissionId' is not null or undefined
        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling getSubmissionLogs.');
        }

        if (step !== undefined) {
            queryParameters['step'] = step;
        }

        if (logLines !== undefined) {
            queryParameters['log_lines'] = logLines;
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
     * List all submissions available
     * @param perPage Results to display per page
     * @param page Page number
     * @param meta Fetch submissions containing this meta value
     * @param status Fetch submissions with this status
     * @param graderId Fetch submissions for a grader
     * @param userId Fetch submissions created by the user
     * @param xFields An optional fields mask
     */
    public listSubmissions (perPage?: string, page?: string, meta?: string, status?: string, graderId?: number, userId?: number, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<Array<models.Submissions>> {
        const localVarPath = this.basePath + '/submissions/';

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

        if (status !== undefined) {
            queryParameters['status'] = status;
        }

        if (graderId !== undefined) {
            queryParameters['grader_id'] = graderId;
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
     * Retry the submissions with given IDs
     * @param payload 
     * @param xFields An optional fields mask
     */
    public retrySubmissions (payload: models.SubmissionRetryInput, xFields?: string, extraHttpRequestParams?: any ) : ng.IHttpPromise<models.SubmissionRetry> {
        const localVarPath = this.basePath + '/submissions/retry';

        let queryParameters: any = {};
        let headerParams: any = (<any>Object).assign({}, this.defaultHeaders);
        // verify required parameter 'payload' is not null or undefined
        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling retrySubmissions.');
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
}
