/* 
 * AIcrowd Evaluations API
 *
 * API to create and evaluate custom challenges on AIcrowd!
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

using Com.AIcrowd.Evaluations.Client;
using Com.AIcrowd.Evaluations.Api;
using Com.AIcrowd.Evaluations.Model;

namespace Com.AIcrowd.Evaluations.Test
{
    /// <summary>
    ///  Class for testing ClustersApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class ClustersApiTests
    {
        private ClustersApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new ClustersApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of ClustersApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' ClustersApi
            //Assert.IsInstanceOfType(typeof(ClustersApi), instance, "instance is a ClustersApi");
        }

        
        /// <summary>
        /// Test CreateCluster
        /// </summary>
        [Test]
        public void CreateClusterTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //Cluster payload = null;
            //string xFields = null;
            //var response = instance.CreateCluster(payload, xFields);
            //Assert.IsInstanceOf<Cluster> (response, "response is Cluster");
        }
        
        /// <summary>
        /// Test DeleteCluster
        /// </summary>
        [Test]
        public void DeleteClusterTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? clusterId = null;
            //instance.DeleteCluster(clusterId);
            
        }
        
        /// <summary>
        /// Test GetCluster
        /// </summary>
        [Test]
        public void GetClusterTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? clusterId = null;
            //string xFields = null;
            //var response = instance.GetCluster(clusterId, xFields);
            //Assert.IsInstanceOf<Cluster> (response, "response is Cluster");
        }
        
        /// <summary>
        /// Test ListClusters
        /// </summary>
        [Test]
        public void ListClustersTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string xFields = null;
            //var response = instance.ListClusters(xFields);
            //Assert.IsInstanceOf<List<Cluster>> (response, "response is List<Cluster>");
        }
        
    }

}
