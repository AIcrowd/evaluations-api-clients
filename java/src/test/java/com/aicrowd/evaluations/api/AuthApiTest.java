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

import com.aicrowd.evaluations.models.AuthLogout;
import com.aicrowd.evaluations.models.AuthResponse;
import com.aicrowd.evaluations.models.Login;
import org.junit.Test;
import org.junit.Ignore;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for AuthApi
 */
@Ignore
public class AuthApiTest {

    private final AuthApi api = new AuthApi();

    
    /**
     * 
     *
     * Log in a user with email and password.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void loginTest() throws Exception {
        Login payload = null;
        String xFields = null;
        AuthResponse response = api.login(payload, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Invalidate the current authorization token.
     *
     * @throws Exception
     *          if the Api call fails
     */
    @Test
    public void logoutTest() throws Exception {
        String xFields = null;
        AuthLogout response = api.logout(xFields);

        // TODO: test validations
    }
    
}
