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


class User(object):
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
        'id': 'int',
        'email': 'str',
        'admin': 'bool',
        'created_on': 'datetime',
        'password_hash': 'str',
        'total_quota': 'int',
        'quota': 'int',
        'organisation_id': 'int',
        'password': 'str'
    }

    attribute_map = {
        'id': 'id',
        'email': 'email',
        'admin': 'admin',
        'created_on': 'created_on',
        'password_hash': 'password_hash',
        'total_quota': 'total_quota',
        'quota': 'quota',
        'organisation_id': 'organisation_id',
        'password': 'password'
    }

    def __init__(self, id=None, email=None, admin=None, created_on=None, password_hash=None, total_quota=None, quota=None, organisation_id=None, password=None, _configuration=None):  # noqa: E501
        """User - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._id = None
        self._email = None
        self._admin = None
        self._created_on = None
        self._password_hash = None
        self._total_quota = None
        self._quota = None
        self._organisation_id = None
        self._password = None
        self.discriminator = None

        if id is not None:
            self.id = id
        self.email = email
        if admin is not None:
            self.admin = admin
        if created_on is not None:
            self.created_on = created_on
        if password_hash is not None:
            self.password_hash = password_hash
        if total_quota is not None:
            self.total_quota = total_quota
        if quota is not None:
            self.quota = quota
        self.organisation_id = organisation_id
        self.password = password

    @property
    def id(self):
        """Gets the id of this User.  # noqa: E501

        ID  # noqa: E501

        :return: The id of this User.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this User.

        ID  # noqa: E501

        :param id: The id of this User.  # noqa: E501
        :type: int
        """

        self._id = id

    @property
    def email(self):
        """Gets the email of this User.  # noqa: E501

        Email  # noqa: E501

        :return: The email of this User.  # noqa: E501
        :rtype: str
        """
        return self._email

    @email.setter
    def email(self, email):
        """Sets the email of this User.

        Email  # noqa: E501

        :param email: The email of this User.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and email is None:
            raise ValueError("Invalid value for `email`, must not be `None`")  # noqa: E501

        self._email = email

    @property
    def admin(self):
        """Gets the admin of this User.  # noqa: E501

        Admin Boolean  # noqa: E501

        :return: The admin of this User.  # noqa: E501
        :rtype: bool
        """
        return self._admin

    @admin.setter
    def admin(self, admin):
        """Sets the admin of this User.

        Admin Boolean  # noqa: E501

        :param admin: The admin of this User.  # noqa: E501
        :type: bool
        """

        self._admin = admin

    @property
    def created_on(self):
        """Gets the created_on of this User.  # noqa: E501

        Creation Time  # noqa: E501

        :return: The created_on of this User.  # noqa: E501
        :rtype: datetime
        """
        return self._created_on

    @created_on.setter
    def created_on(self, created_on):
        """Sets the created_on of this User.

        Creation Time  # noqa: E501

        :param created_on: The created_on of this User.  # noqa: E501
        :type: datetime
        """

        self._created_on = created_on

    @property
    def password_hash(self):
        """Gets the password_hash of this User.  # noqa: E501

        Hashed Password  # noqa: E501

        :return: The password_hash of this User.  # noqa: E501
        :rtype: str
        """
        return self._password_hash

    @password_hash.setter
    def password_hash(self, password_hash):
        """Sets the password_hash of this User.

        Hashed Password  # noqa: E501

        :param password_hash: The password_hash of this User.  # noqa: E501
        :type: str
        """

        self._password_hash = password_hash

    @property
    def total_quota(self):
        """Gets the total_quota of this User.  # noqa: E501

        Total assigned evaluation quota  # noqa: E501

        :return: The total_quota of this User.  # noqa: E501
        :rtype: int
        """
        return self._total_quota

    @total_quota.setter
    def total_quota(self, total_quota):
        """Sets the total_quota of this User.

        Total assigned evaluation quota  # noqa: E501

        :param total_quota: The total_quota of this User.  # noqa: E501
        :type: int
        """

        self._total_quota = total_quota

    @property
    def quota(self):
        """Gets the quota of this User.  # noqa: E501

        Available evaluation quota  # noqa: E501

        :return: The quota of this User.  # noqa: E501
        :rtype: int
        """
        return self._quota

    @quota.setter
    def quota(self, quota):
        """Sets the quota of this User.

        Available evaluation quota  # noqa: E501

        :param quota: The quota of this User.  # noqa: E501
        :type: int
        """

        self._quota = quota

    @property
    def organisation_id(self):
        """Gets the organisation_id of this User.  # noqa: E501

        Organisation identifier  # noqa: E501

        :return: The organisation_id of this User.  # noqa: E501
        :rtype: int
        """
        return self._organisation_id

    @organisation_id.setter
    def organisation_id(self, organisation_id):
        """Sets the organisation_id of this User.

        Organisation identifier  # noqa: E501

        :param organisation_id: The organisation_id of this User.  # noqa: E501
        :type: int
        """
        if self._configuration.client_side_validation and organisation_id is None:
            raise ValueError("Invalid value for `organisation_id`, must not be `None`")  # noqa: E501

        self._organisation_id = organisation_id

    @property
    def password(self):
        """Gets the password of this User.  # noqa: E501

        user password  # noqa: E501

        :return: The password of this User.  # noqa: E501
        :rtype: str
        """
        return self._password

    @password.setter
    def password(self, password):
        """Sets the password of this User.

        user password  # noqa: E501

        :param password: The password of this User.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and password is None:
            raise ValueError("Invalid value for `password`, must not be `None`")  # noqa: E501

        self._password = password

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
        if issubclass(User, dict):
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
        if not isinstance(other, User):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, User):
            return True

        return self.to_dict() != other.to_dict()
