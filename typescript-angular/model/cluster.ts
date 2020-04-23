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


export interface Cluster { 
    /**
     * ID
     */
    readonly id?: number;
    /**
     * Creation time
     */
    readonly created?: Date;
    /**
     * Last updation time
     */
    readonly updated?: Date;
    /**
     * Remote address used to connect to the cluster
     */
    remoteAddress: string;
    /**
     * Authentication needed for the cluster
     */
    authToken: string;
    /**
     * Docker registry username
     */
    dockerUsername: string;
    /**
     * Docker registry password
     */
    dockerPassword: string;
    /**
     * Docker registry URL. Dockerhub is used by default.
     */
    dockerRegistry?: string;
    /**
     * Storage class to use for datasets
     */
    storageClass?: string;
    /**
     * Readiness of the cluster
     */
    readonly status?: boolean;
    /**
     * Name of the workflow used to setup grader
     */
    readonly wfName?: string;
    /**
     * User ID
     */
    readonly userId?: number;
    /**
     * Organisation ID
     */
    readonly organisationId?: number;
}
