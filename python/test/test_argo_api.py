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
from swagger_client.api.argo_api import ArgoApi  # noqa: E501
from swagger_client.rest import ApiException


class TestArgoApi(unittest.TestCase):
    """ArgoApi unit test stubs"""

    def setUp(self):
        self.api = swagger_client.api.argo_api.ArgoApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_post_generic_feedback_contract(self):
        """Test case for post_generic_feedback_contract

        """
        pass

    def test_post_grader_feedback_dao(self):
        """Test case for post_grader_feedback_dao

        """
        pass

    def test_post_submission_feedback_dao(self):
        """Test case for post_submission_feedback_dao

        """
        pass


if __name__ == '__main__':
    unittest.main()
