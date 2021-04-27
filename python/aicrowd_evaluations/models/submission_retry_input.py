# coding: utf-8

"""
    AIcrowd Evaluations API

    API to create and evaluate custom challenges on AIcrowd!  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from aicrowd_evaluations.configuration import Configuration


class SubmissionRetryInput(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'submissions': 'list[int]'
    }

    attribute_map = {
        'submissions': 'submissions'
    }

    def __init__(self, submissions=None, _configuration=None):  # noqa: E501
        """SubmissionRetryInput - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._submissions = None
        self.discriminator = None

        if submissions is not None:
            self.submissions = submissions

    @property
    def submissions(self):
        """Gets the submissions of this SubmissionRetryInput.  # noqa: E501

        List of submission IDs to retry  # noqa: E501

        :return: The submissions of this SubmissionRetryInput.  # noqa: E501
        :rtype: list[int]
        """
        return self._submissions

    @submissions.setter
    def submissions(self, submissions):
        """Sets the submissions of this SubmissionRetryInput.

        List of submission IDs to retry  # noqa: E501

        :param submissions: The submissions of this SubmissionRetryInput.  # noqa: E501
        :type: list[int]
        """

        self._submissions = submissions

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(SubmissionRetryInput, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, SubmissionRetryInput):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, SubmissionRetryInput):
            return True

        return self.to_dict() != other.to_dict()
