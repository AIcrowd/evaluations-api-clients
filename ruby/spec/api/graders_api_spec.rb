=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.23

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

  # unit tests for archive_grader
  # Archive a grader
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'archive_grader test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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

  # unit tests for download_grader_logs
  # Get the grader logs by submission ID
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'download_grader_logs test' do
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
  # Get grader logs from loki
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :step Granularity of logs
  # @option opts [Integer] :log_lines Number of lines to fetch
  # @option opts [String] :x_fields An optional fields mask
  # @return [GraderLogs]
  describe 'get_grader_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_graders
  # List all graders available
  # @param [Hash] opts the optional parameters
  # @option opts [String] :per_page Results to display per page
  # @option opts [String] :page Page number
  # @option opts [String] :meta Fetch graders containing this meta value
  # @option opts [String] :name Fetch grader containing name
  # @option opts [String] :status Fetch graders with this status
  # @option opts [Integer] :user_id Fetch graders created by the user
  # @option opts [String] :x_fields An optional fields mask
  # @return [Array<Grader>]
  describe 'list_graders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unarchive_grader
  # Unarchive a grader
  # @param grader_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'unarchive_grader test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_grader
  # Update meta details of a grader by its ID. Warning: There is no data validation.
  # @param grader_id 
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_fields An optional fields mask
  # @return [Grader]
  describe 'update_grader test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
