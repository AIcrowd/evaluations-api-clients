=begin
#Evaluations API

#API to create and evaluate custom challenges

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for AIcrowdEvaluations::ArgoApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ArgoApi' do
  before do
    # run before each test
    @instance = AIcrowdEvaluations::ArgoApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ArgoApi' do
    it 'should create an instance of ArgoApi' do
      expect(@instance).to be_instance_of(AIcrowdEvaluations::ArgoApi)
    end
  end

  # unit tests for post_generic_feedback_contract
  # Update the status of an object
  # @param model_name 
  # @param object_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_generic_feedback_contract test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_grader_feedback_dao
  # Update the grader details
  # @param grader_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_grader_feedback_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_submission_feedback_dao
  # Update the submission details
  # @param submission_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_submission_feedback_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
