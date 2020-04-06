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

export interface Organisation {
    /**
     * ID
     */
    "id"?: number;
    /**
     * Organisation Name
     */
    "name": string;
    /**
     * Point of contact email
     */
    "pocEmail": string;
    /**
     * Creation Time
     */
    "createdOn"?: Date;
    /**
     * Total assigned evaluation quota
     */
    "totalQuota"?: number;
    /**
     * Available evaluation quota
     */
    "quota"?: number;
}

