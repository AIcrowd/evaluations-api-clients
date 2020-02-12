=begin
#Evaluations API

#API to create and evaluate custom challenges

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ClustersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClustersApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ClustersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClustersApi' do
    it 'should create an instance of ClustersApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ClustersApi)
    end
  end

  # unit tests for delete_cluster_dao
  # Delete a cluster
  # @param cluster_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cluster_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cluster_dao
  # Get information of a cluster
  # @param cluster_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Cluster]
  describe 'get_cluster_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_grader_list_dao
  # Get all clusters
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Array<Cluster>]
  describe 'get_grader_list_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_grader_list_dao
  # Add a new cluster
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Cluster]
  describe 'post_grader_list_dao test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
