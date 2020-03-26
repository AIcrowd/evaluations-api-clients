=begin
#Evaluations API

#API to create and evaluate custom challenges

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

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

  # unit tests for delete_grader_dao
  # Delete a grader
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_grader_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grader_dao
  # Get information of a grader
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Grader]
  describe 'get_grader_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grader_list_dao
  # Get all grader
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Array<Grader>]
  describe 'get_grader_list_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_grader_list_dao
  # Create a new grader
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Grader]
  describe 'post_grader_list_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_grader_dao
  # Update a grader
  # @param grader_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Grader]
  describe 'put_grader_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
