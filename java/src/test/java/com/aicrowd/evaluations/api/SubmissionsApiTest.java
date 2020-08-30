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
import com.aicrowd.evaluations.models.SubmissionRetry;
import com.aicrowd.evaluations.models.SubmissionRetryInput;
import com.aicrowd.evaluations.models.Submissions;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for SubmissionsApi
 */
@Ignore
public class SubmissionsApiTest {

    private final SubmissionsApi api = new SubmissionsApi();

    
    /**
     * 
     *
     * Make a new submission
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createSubmissionTest() throws ApiException {
        Submissions payload = null;
        String xFields = null;
        Submissions response = api.createSubmission(payload, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Stop evaluation of a submission and delete it
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteSubmissionTest() throws ApiException {
        Integer submissionId = null;
        api.deleteSubmission(submissionId);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get details of a submission by its ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getSubmissionTest() throws ApiException {
        Integer submissionId = null;
        String xFields = null;
        Submissions response = api.getSubmission(submissionId, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get the submission data by submission ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getSubmissionDataTest() throws ApiException {
        Integer submissionId = null;
        api.getSubmissionData(submissionId);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Get the submission logs by submission ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getSubmissionLogsTest() throws ApiException {
        Integer submissionId = null;
        api.getSubmissionLogs(submissionId);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * List all submissions available
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void listSubmissionsTest() throws ApiException {
        String perPage = null;
        String page = null;
        String meta = null;
        String status = null;
        Integer graderId = null;
        Integer userId = null;
        String xFields = null;
        List<Submissions> response = api.listSubmissions(perPage, page, meta, status, graderId, userId, xFields);

        // TODO: test validations
    }
    
    /**
     * 
     *
     * Retry the submissions with given IDs
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void retrySubmissionsTest() throws ApiException {
        SubmissionRetryInput payload = null;
        String xFields = null;
        SubmissionRetry response = api.retrySubmissions(payload, xFields);

        // TODO: test validations
    }
    
}
