/* 
 * Evaluations API
 *
 * API to create and evaluate custom challenges
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using NUnit.Framework;

using IO.Swagger.Client;
using IO.Swagger.Api;
using IO.Swagger.Model;

namespace IO.Swagger.Test
{
    /// <summary>
    ///  Class for testing ArgoApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class ArgoApiTests
    {
        private ArgoApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new ArgoApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of ArgoApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' ArgoApi
            //Assert.IsInstanceOfType(typeof(ArgoApi), instance, "instance is a ArgoApi");
        }

        
        /// <summary>
        /// Test PostGenericFeedbackContract
        /// </summary>
        [Test]
        public void PostGenericFeedbackContractTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string modelName = null;
            //int? objectId = null;
            //GenericFeedback payload = null;
            //instance.PostGenericFeedbackContract(modelName, objectId, payload);
            
        }
        
        /// <summary>
        /// Test PostGraderFeedbackDao
        /// </summary>
        [Test]
        public void PostGraderFeedbackDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? graderId = null;
            //GraderFeedback payload = null;
            //instance.PostGraderFeedbackDao(graderId, payload);
            
        }
        
        /// <summary>
        /// Test PostSubmissionFeedbackDao
        /// </summary>
        [Test]
        public void PostSubmissionFeedbackDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? submissionId = null;
            //SubmissionFeedback payload = null;
            //instance.PostSubmissionFeedbackDao(submissionId, payload);
            
        }
        
    }

}
