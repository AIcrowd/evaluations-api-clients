=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'

# Unit tests for AIcrowdEvaluations::GradersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GradersApi' do
  before do
    # run before each test
    @instance = AIcrowdEvaluations::GradersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GradersApi' do
    it 'should create an instance of GradersApi' do
      expect(@instance).to be_instance_of(AIcrowdEvaluations::GradersApi)
    end
  end

  # unit tests for create_grader
  # Create a new grader
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Grader]
  describe 'create_grader test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_grader
  # Delete a grader by its ID
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_grader test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grader
  # Get details of a grader by its ID
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Grader]
  describe 'get_grader test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grader_logs
  # Get the grader logs by submission ID
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_grader_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_graders
  # List all graders available
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Fetch grader with this name
  # @option opts [String] :status Fetch graders with this status
  # @option opts [Integer] :user_id Fetch graders created by the user
  # @option opts [String] :x_fields An optional fields mask
  # @return [Array<Grader>]
  describe 'list_graders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
