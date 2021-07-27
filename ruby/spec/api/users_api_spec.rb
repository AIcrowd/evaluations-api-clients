=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.21

=end

require 'spec_helper'
require 'json'

# Unit tests for AIcrowdEvaluations::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = AIcrowdEvaluations::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(AIcrowdEvaluations::UsersApi)
    end
  end

  # unit tests for create_user
  # Create a new user
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [User]
  describe 'create_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user
  # Delete a user
  # @param user_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user
  # Get information of a user
  # @param user_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [User]
  describe 'get_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_users
  # Get all user
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Array<User>]
  describe 'list_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user
  # Update a user
  # @param user_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [User]
  describe 'update_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_quota
  # Add or subtract quota for a user
  # @param user_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_user_quota test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
