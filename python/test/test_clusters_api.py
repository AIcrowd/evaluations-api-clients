# coding: utf-8

"""
    Evaluations API

    API to create and evaluate custom challenges  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import unittest

import swagger_client
from swagger_client.api.clusters_api import ClustersApi  # noqa: E501
from swagger_client.rest import ApiException


class TestClustersApi(unittest.TestCase):
    """ClustersApi unit test stubs"""

    def setUp(self):
        self.api = swagger_client.api.clusters_api.ClustersApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_delete_cluster_dao(self):
        """Test case for delete_cluster_dao

        """
        pass

    def test_get_cluster_dao(self):
        """Test case for get_cluster_dao

        """
        pass

    def test_get_grader_list_dao(self):
        """Test case for get_grader_list_dao

        """
        pass

    def test_post_grader_list_dao(self):
        """Test case for post_grader_list_dao

        """
        pass


if __name__ == '__main__':
    unittest.main()
