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

import * as models from './models';

export interface User {
    /**
     * ID
     */
    "id"?: number;
    /**
     * Email
     */
    "email": string;
    /**
     * Admin Boolean
     */
    "admin"?: boolean;
    /**
     * Creation Time
     */
    "createdOn"?: Date;
    /**
     * Hashed Password
     */
    "passwordHash"?: string;
    /**
     * Total assigned evaluation quota
     */
    "totalQuota"?: number;
    /**
     * Available evaluation quota
     */
    "quota"?: number;
    /**
     * Organisation identifier
     */
    "organisationId": number;
    /**
     * user password
     */
    "password": string;
}

