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
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent }                           from '@angular/common/http';
import { CustomHttpUrlEncodingCodec }                        from '../encoder';

import { Observable }                                        from 'rxjs/Observable';

import { Submissions } from '../model/submissions';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable()
export class SubmissionsService {

    protected basePath = 'https://localhost/v1';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {
        if (basePath) {
            this.basePath = basePath;
        }
        if (configuration) {
            this.configuration = configuration;
            this.basePath = basePath || configuration.basePath || this.basePath;
        }
    }

    /**
     * @param consumes string[] mime-types
     * @return true: consumes contains 'multipart/form-data', false: otherwise
     */
    private canConsumeForm(consumes: string[]): boolean {
        const form = 'multipart/form-data';
        for (const consume of consumes) {
            if (form === consume) {
                return true;
            }
        }
        return false;
    }


    /**
     * 
     * Stop evaluation of a submission
     * @param submissionId 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public deleteSubmissionDao(submissionId: number, observe?: 'body', reportProgress?: boolean): Observable<any>;
    public deleteSubmissionDao(submissionId: number, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<any>>;
    public deleteSubmissionDao(submissionId: number, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<any>>;
    public deleteSubmissionDao(submissionId: number, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling deleteSubmissionDao.');
        }

        let headers = this.defaultHeaders;

        // authentication (api_key) required
        if (this.configuration.apiKeys["AUTHORIZATION"]) {
            headers = headers.set('AUTHORIZATION', this.configuration.apiKeys["AUTHORIZATION"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];

        return this.httpClient.delete<any>(`${this.basePath}/submissions/${encodeURIComponent(String(submissionId))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * Get details of a submission
     * @param submissionId 
     * @param xFields An optional fields mask
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getSubmissionDao(submissionId: number, xFields?: string, observe?: 'body', reportProgress?: boolean): Observable<Submissions>;
    public getSubmissionDao(submissionId: number, xFields?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<Submissions>>;
    public getSubmissionDao(submissionId: number, xFields?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<Submissions>>;
    public getSubmissionDao(submissionId: number, xFields?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        if (submissionId === null || submissionId === undefined) {
            throw new Error('Required parameter submissionId was null or undefined when calling getSubmissionDao.');
        }


        let headers = this.defaultHeaders;
        if (xFields !== undefined && xFields !== null) {
            headers = headers.set('X-Fields', String(xFields));
        }

        // authentication (api_key) required
        if (this.configuration.apiKeys["AUTHORIZATION"]) {
            headers = headers.set('AUTHORIZATION', this.configuration.apiKeys["AUTHORIZATION"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];

        return this.httpClient.get<Submissions>(`${this.basePath}/submissions/${encodeURIComponent(String(submissionId))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * Get all submissions
     * @param xFields An optional fields mask
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getSubmissionListDao(xFields?: string, observe?: 'body', reportProgress?: boolean): Observable<Array<Submissions>>;
    public getSubmissionListDao(xFields?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<Array<Submissions>>>;
    public getSubmissionListDao(xFields?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<Array<Submissions>>>;
    public getSubmissionListDao(xFields?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {


        let headers = this.defaultHeaders;
        if (xFields !== undefined && xFields !== null) {
            headers = headers.set('X-Fields', String(xFields));
        }

        // authentication (api_key) required
        if (this.configuration.apiKeys["AUTHORIZATION"]) {
            headers = headers.set('AUTHORIZATION', this.configuration.apiKeys["AUTHORIZATION"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];

        return this.httpClient.get<Array<Submissions>>(`${this.basePath}/submissions/`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * Make a new submission
     * @param payload 
     * @param xFields An optional fields mask
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public postSubmissionListDao(payload: Submissions, xFields?: string, observe?: 'body', reportProgress?: boolean): Observable<Submissions>;
    public postSubmissionListDao(payload: Submissions, xFields?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<Submissions>>;
    public postSubmissionListDao(payload: Submissions, xFields?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<Submissions>>;
    public postSubmissionListDao(payload: Submissions, xFields?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        if (payload === null || payload === undefined) {
            throw new Error('Required parameter payload was null or undefined when calling postSubmissionListDao.');
        }


        let headers = this.defaultHeaders;
        if (xFields !== undefined && xFields !== null) {
            headers = headers.set('X-Fields', String(xFields));
        }

        // authentication (api_key) required
        if (this.configuration.apiKeys["AUTHORIZATION"]) {
            headers = headers.set('AUTHORIZATION', this.configuration.apiKeys["AUTHORIZATION"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected != undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected != undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<Submissions>(`${this.basePath}/submissions/`,
            payload,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}
