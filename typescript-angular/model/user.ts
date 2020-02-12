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


export interface User { 
    /**
     * ID
     */
    readonly id?: number;
    /**
     * Email
     */
    email?: string;
    /**
     * Admin Boolean
     */
    admin?: boolean;
    /**
     * Creation Time
     */
    readonly createdOn?: Date;
    /**
     * Hashed Password
     */
    readonly passwordHash?: string;
    /**
     * Total assigned evaluation quota
     */
    readonly totalQuota?: number;
    /**
     * Available evaluation quota
     */
    readonly quota?: number;
    /**
     * Organisation identifier
     */
    organisationId?: number;
    /**
     * user password
     */
    password: string;
}
