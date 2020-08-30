=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for AIcrowdEvaluations::SubmissionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubmissionsApi' do
  before do
    # run before each test
    @instance = AIcrowdEvaluations::SubmissionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubmissionsApi' do
    it 'should create an instance of SubmissionsApi' do
      expect(@instance).to be_instance_of(AIcrowdEvaluations::SubmissionsApi)
    end
  end

  # unit tests for create_submission
  # Make a new submission
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Submissions]
  describe 'create_submission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_submission
  # Stop evaluation of a submission and delete it
  # @param submission_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_submission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_submission
  # Get details of a submission by its ID
  # @param submission_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Submissions]
  describe 'get_submission test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_submission_data
  # Get the submission data by submission ID
  # @param submission_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_submission_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_submission_logs
  # Get the submission logs by submission ID
  # @param submission_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_submission_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_submissions
  # List all submissions available
  # @param [Hash] opts the optional parameters
  # @option opts [String] :per_page Results to display per page
  # @option opts [String] :page Page number
  # @option opts [String] :meta Fetch submissions containing this meta value
  # @option opts [String] :status Fetch submissions with this status
  # @option opts [Integer] :grader_id Fetch submissions for a grader
  # @option opts [Integer] :user_id Fetch submissions created by the user
  # @option opts [String] :x_fields An optional fields mask
  # @return [Array<Submissions>]
  describe 'list_submissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for retry_submissions
  # Retry the submissions with given IDs
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [SubmissionRetry]
  describe 'retry_submissions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
