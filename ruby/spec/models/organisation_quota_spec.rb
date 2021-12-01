=begin
#AIcrowd Evaluations API

#API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AIcrowdEvaluations::OrganisationQuota
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganisationQuota' do
  before do
    # run before each test
    @instance = AIcrowdEvaluations::OrganisationQuota.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganisationQuota' do
    it 'should create an instance of OrganisationQuota' do
      expect(@instance).to be_instance_of(AIcrowdEvaluations::OrganisationQuota)
    end
  end
  describe 'test attribute "quota"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
