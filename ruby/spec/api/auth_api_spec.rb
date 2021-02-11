=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.18

=end

require 'spec_helper'
require 'json'

# Unit tests for AIcrowdEvaluations::AuthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @instance = AIcrowdEvaluations::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@instance).to be_instance_of(AIcrowdEvaluations::AuthApi)
    end
  end

  # unit tests for login
  # Log in a user with email and password.
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [AuthResponse]
  describe 'login test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for logout
  # Invalidate the current authorization token.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [AuthLogout]
  describe 'logout test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
