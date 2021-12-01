/*
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


package com.aicrowd.evaluations.api;

import com.aicrowd.evaluations.models.User;
import com.aicrowd.evaluations.models.UserQuota;
import org.junit.Test;
import org.junit.Ignore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for UsersApi
 */
@Ignore
public class UsersApiTest {

    private final UsersApi api = new UsersApi();

    
    /**
     * 
     *
     * Create a new user
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void createUserTest() throws Exception {
        User payload = null;
        String xFields = null;
        User response = api.createUser(payload, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Delete a user
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void deleteUserTest() throws Exception {
        Integer userId = null;
        api.deleteUser(userId);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get information of a user
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void getUserTest() throws Exception {
        Integer userId = null;
        String xFields = null;
        User response = api.getUser(userId, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get all user
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void listUsersTest() throws Exception {
        String xFields = null;
        List<User> response = api.listUsers(xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Update a user
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void updateUserTest() throws Exception {
        Integer userId = null;
        User payload = null;
        String xFields = null;
        User response = api.updateUser(userId, payload, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Add or subtract quota for a user
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void updateUserQuotaTest() throws Exception {
        Integer userId = null;
        UserQuota payload = null;
        api.updateUserQuota(userId, payload);

        // TODO: test validations
    }
    
}
