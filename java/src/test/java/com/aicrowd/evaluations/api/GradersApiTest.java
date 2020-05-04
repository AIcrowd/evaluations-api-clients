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

import com.aicrowd.evaluations.ApiException;
import com.aicrowd.evaluations.models.Grader;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for GradersApi
 */
@Ignore
public class GradersApiTest {

    private final GradersApi api = new GradersApi();

    
    /**
     * 
     *
     * Create a new grader
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createGraderTest() throws ApiException {
        Grader payload = null;
        String xFields = null;
        Grader response = api.createGrader(payload, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Delete a grader by its ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteGraderTest() throws ApiException {
        Integer graderId = null;
        api.deleteGrader(graderId);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get details of a grader by its ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getGraderTest() throws ApiException {
        Integer graderId = null;
        String xFields = null;
        Grader response = api.getGrader(graderId, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get the grader logs by submission ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getGraderLogsTest() throws ApiException {
        Integer graderId = null;
        api.getGraderLogs(graderId);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * List all graders available
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void listGradersTest() throws ApiException {
        String name = null;
        String status = null;
        Integer userId = null;
        String xFields = null;
        List<Grader> response = api.listGraders(name, status, userId, xFields);

        // TODO: test validations
    }
    
}
