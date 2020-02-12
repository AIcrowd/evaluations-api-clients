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
    ///  Class for testing UsersApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by Swagger Codegen.
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    [TestFixture]
    public class UsersApiTests
    {
        private UsersApi instance;

        /// <summary>
        /// Setup before each unit test
        /// </summary>
        [SetUp]
        public void Init()
        {
            instance = new UsersApi();
        }

        /// <summary>
        /// Clean up after each unit test
        /// </summary>
        [TearDown]
        public void Cleanup()
        {

        }

        /// <summary>
        /// Test an instance of UsersApi
        /// </summary>
        [Test]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsInstanceOfType' UsersApi
            //Assert.IsInstanceOfType(typeof(UsersApi), instance, "instance is a UsersApi");
        }

        
        /// <summary>
        /// Test DeleteUserDao
        /// </summary>
        [Test]
        public void DeleteUserDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? userId = null;
            //instance.DeleteUserDao(userId);
            
        }
        
        /// <summary>
        /// Test GetUserDao
        /// </summary>
        [Test]
        public void GetUserDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? userId = null;
            //string xFields = null;
            //var response = instance.GetUserDao(userId, xFields);
            //Assert.IsInstanceOf<User> (response, "response is User");
        }
        
        /// <summary>
        /// Test GetUserListDao
        /// </summary>
        [Test]
        public void GetUserListDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string xFields = null;
            //var response = instance.GetUserListDao(xFields);
            //Assert.IsInstanceOf<List<User>> (response, "response is List<User>");
        }
        
        /// <summary>
        /// Test PostUserListDao
        /// </summary>
        [Test]
        public void PostUserListDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //User payload = null;
            //string xFields = null;
            //var response = instance.PostUserListDao(payload, xFields);
            //Assert.IsInstanceOf<User> (response, "response is User");
        }
        
        /// <summary>
        /// Test PutQuotaDao
        /// </summary>
        [Test]
        public void PutQuotaDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? userId = null;
            //UserQuota payload = null;
            //instance.PutQuotaDao(userId, payload);
            
        }
        
        /// <summary>
        /// Test PutUserDao
        /// </summary>
        [Test]
        public void PutUserDaoTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? userId = null;
            //User payload = null;
            //string xFields = null;
            //var response = instance.PutUserDao(userId, payload, xFields);
            //Assert.IsInstanceOf<User> (response, "response is User");
        }
        
    }

}
