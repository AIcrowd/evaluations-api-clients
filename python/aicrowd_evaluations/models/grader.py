# coding: utf-8

"""
    Evaluations API

    API to create and evaluate custom challenges  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six


class Grader(object):
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
        'created': 'datetime',
        'updated': 'datetime',
        'dataset_url': 'str',
        'cluster_id': 'int',
        'workflow_spec': 'object',
        'evaluator_repo': 'str',
        'evaluator_repo_tag': 'str',
        'storage_capacity': 'str',
        'logs': 'object',
        'meta': 'object',
        'status': 'str',
        'submission_types': 'object',
        'user_id': 'int',
        'organisation_id': 'int'
    }

    attribute_map = {
        'id': 'id',
        'created': 'created',
        'updated': 'updated',
        'dataset_url': 'dataset_url',
        'cluster_id': 'cluster_id',
        'workflow_spec': 'workflow_spec',
        'evaluator_repo': 'evaluator_repo',
        'evaluator_repo_tag': 'evaluator_repo_tag',
        'storage_capacity': 'storage_capacity',
        'logs': 'logs',
        'meta': 'meta',
        'status': 'status',
        'submission_types': 'submission_types',
        'user_id': 'user_id',
        'organisation_id': 'organisation_id'
    }

    def __init__(self, id=None, created=None, updated=None, dataset_url=None, cluster_id=None, workflow_spec=None, evaluator_repo=None, evaluator_repo_tag=None, storage_capacity=None, logs=None, meta=None, status=None, submission_types=None, user_id=None, organisation_id=None):  # noqa: E501
        """Grader - a model defined in Swagger"""  # noqa: E501

        self._id = None
        self._created = None
        self._updated = None
        self._dataset_url = None
        self._cluster_id = None
        self._workflow_spec = None
        self._evaluator_repo = None
        self._evaluator_repo_tag = None
        self._storage_capacity = None
        self._logs = None
        self._meta = None
        self._status = None
        self._submission_types = None
        self._user_id = None
        self._organisation_id = None
        self.discriminator = None

        if id is not None:
            self.id = id
        if created is not None:
            self.created = created
        if updated is not None:
            self.updated = updated
        if dataset_url is not None:
            self.dataset_url = dataset_url
        if cluster_id is not None:
            self.cluster_id = cluster_id
        if workflow_spec is not None:
            self.workflow_spec = workflow_spec
        self.evaluator_repo = evaluator_repo
        if evaluator_repo_tag is not None:
            self.evaluator_repo_tag = evaluator_repo_tag
        if storage_capacity is not None:
            self.storage_capacity = storage_capacity
        if logs is not None:
            self.logs = logs
        if meta is not None:
            self.meta = meta
        if status is not None:
            self.status = status
        if submission_types is not None:
            self.submission_types = submission_types
        if user_id is not None:
            self.user_id = user_id
        if organisation_id is not None:
            self.organisation_id = organisation_id

    @property
    def id(self):
        """Gets the id of this Grader.  # noqa: E501

        ID  # noqa: E501

        :return: The id of this Grader.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this Grader.

        ID  # noqa: E501

        :param id: The id of this Grader.  # noqa: E501
        :type: int
        """

        self._id = id

    @property
    def created(self):
        """Gets the created of this Grader.  # noqa: E501

        Creation time  # noqa: E501

        :return: The created of this Grader.  # noqa: E501
        :rtype: datetime
        """
        return self._created

    @created.setter
    def created(self, created):
        """Sets the created of this Grader.

        Creation time  # noqa: E501

        :param created: The created of this Grader.  # noqa: E501
        :type: datetime
        """

        self._created = created

    @property
    def updated(self):
        """Gets the updated of this Grader.  # noqa: E501

        Last updation time  # noqa: E501

        :return: The updated of this Grader.  # noqa: E501
        :rtype: datetime
        """
        return self._updated

    @updated.setter
    def updated(self, updated):
        """Sets the updated of this Grader.

        Last updation time  # noqa: E501

        :param updated: The updated of this Grader.  # noqa: E501
        :type: datetime
        """

        self._updated = updated

    @property
    def dataset_url(self):
        """Gets the dataset_url of this Grader.  # noqa: E501

        S3 link of the Dataset  # noqa: E501

        :return: The dataset_url of this Grader.  # noqa: E501
        :rtype: str
        """
        return self._dataset_url

    @dataset_url.setter
    def dataset_url(self, dataset_url):
        """Sets the dataset_url of this Grader.

        S3 link of the Dataset  # noqa: E501

        :param dataset_url: The dataset_url of this Grader.  # noqa: E501
        :type: str
        """

        self._dataset_url = dataset_url

    @property
    def cluster_id(self):
        """Gets the cluster_id of this Grader.  # noqa: E501

        Cluster to run the grader on  # noqa: E501

        :return: The cluster_id of this Grader.  # noqa: E501
        :rtype: int
        """
        return self._cluster_id

    @cluster_id.setter
    def cluster_id(self, cluster_id):
        """Sets the cluster_id of this Grader.

        Cluster to run the grader on  # noqa: E501

        :param cluster_id: The cluster_id of this Grader.  # noqa: E501
        :type: int
        """

        self._cluster_id = cluster_id

    @property
    def workflow_spec(self):
        """Gets the workflow_spec of this Grader.  # noqa: E501

        Argo workflow template spec  # noqa: E501

        :return: The workflow_spec of this Grader.  # noqa: E501
        :rtype: object
        """
        return self._workflow_spec

    @workflow_spec.setter
    def workflow_spec(self, workflow_spec):
        """Sets the workflow_spec of this Grader.

        Argo workflow template spec  # noqa: E501

        :param workflow_spec: The workflow_spec of this Grader.  # noqa: E501
        :type: object
        """

        self._workflow_spec = workflow_spec

    @property
    def evaluator_repo(self):
        """Gets the evaluator_repo of this Grader.  # noqa: E501

        Git URL of the repository containing the code that will be used for the evaluation  # noqa: E501

        :return: The evaluator_repo of this Grader.  # noqa: E501
        :rtype: str
        """
        return self._evaluator_repo

    @evaluator_repo.setter
    def evaluator_repo(self, evaluator_repo):
        """Sets the evaluator_repo of this Grader.

        Git URL of the repository containing the code that will be used for the evaluation  # noqa: E501

        :param evaluator_repo: The evaluator_repo of this Grader.  # noqa: E501
        :type: str
        """
        if evaluator_repo is None:
            raise ValueError("Invalid value for `evaluator_repo`, must not be `None`")  # noqa: E501

        self._evaluator_repo = evaluator_repo

    @property
    def evaluator_repo_tag(self):
        """Gets the evaluator_repo_tag of this Grader.  # noqa: E501

        Git branch/tag that should be used with the evaluator repository.  # noqa: E501

        :return: The evaluator_repo_tag of this Grader.  # noqa: E501
        :rtype: str
        """
        return self._evaluator_repo_tag

    @evaluator_repo_tag.setter
    def evaluator_repo_tag(self, evaluator_repo_tag):
        """Sets the evaluator_repo_tag of this Grader.

        Git branch/tag that should be used with the evaluator repository.  # noqa: E501

        :param evaluator_repo_tag: The evaluator_repo_tag of this Grader.  # noqa: E501
        :type: str
        """

        self._evaluator_repo_tag = evaluator_repo_tag

    @property
    def storage_capacity(self):
        """Gets the storage_capacity of this Grader.  # noqa: E501

        Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.  # noqa: E501

        :return: The storage_capacity of this Grader.  # noqa: E501
        :rtype: str
        """
        return self._storage_capacity

    @storage_capacity.setter
    def storage_capacity(self, storage_capacity):
        """Sets the storage_capacity of this Grader.

        Size of the dataset partition to request. Please provide at least 2x of the size of the dataset.  # noqa: E501

        :param storage_capacity: The storage_capacity of this Grader.  # noqa: E501
        :type: str
        """

        self._storage_capacity = storage_capacity

    @property
    def logs(self):
        """Gets the logs of this Grader.  # noqa: E501

        Logs from argo workflow  # noqa: E501

        :return: The logs of this Grader.  # noqa: E501
        :rtype: object
        """
        return self._logs

    @logs.setter
    def logs(self, logs):
        """Sets the logs of this Grader.

        Logs from argo workflow  # noqa: E501

        :param logs: The logs of this Grader.  # noqa: E501
        :type: object
        """

        self._logs = logs

    @property
    def meta(self):
        """Gets the meta of this Grader.  # noqa: E501

        Additional meta data of the grader  # noqa: E501

        :return: The meta of this Grader.  # noqa: E501
        :rtype: object
        """
        return self._meta

    @meta.setter
    def meta(self, meta):
        """Sets the meta of this Grader.

        Additional meta data of the grader  # noqa: E501

        :param meta: The meta of this Grader.  # noqa: E501
        :type: object
        """

        self._meta = meta

    @property
    def status(self):
        """Gets the status of this Grader.  # noqa: E501

        Status of the grader - True if it ready, False otherwise  # noqa: E501

        :return: The status of this Grader.  # noqa: E501
        :rtype: str
        """
        return self._status

    @status.setter
    def status(self, status):
        """Sets the status of this Grader.

        Status of the grader - True if it ready, False otherwise  # noqa: E501

        :param status: The status of this Grader.  # noqa: E501
        :type: str
        """

        self._status = status

    @property
    def submission_types(self):
        """Gets the submission_types of this Grader.  # noqa: E501

        Type of submissions allowed on the grader  # noqa: E501

        :return: The submission_types of this Grader.  # noqa: E501
        :rtype: object
        """
        return self._submission_types

    @submission_types.setter
    def submission_types(self, submission_types):
        """Sets the submission_types of this Grader.

        Type of submissions allowed on the grader  # noqa: E501

        :param submission_types: The submission_types of this Grader.  # noqa: E501
        :type: object
        """

        self._submission_types = submission_types

    @property
    def user_id(self):
        """Gets the user_id of this Grader.  # noqa: E501

        User ID  # noqa: E501

        :return: The user_id of this Grader.  # noqa: E501
        :rtype: int
        """
        return self._user_id

    @user_id.setter
    def user_id(self, user_id):
        """Sets the user_id of this Grader.

        User ID  # noqa: E501

        :param user_id: The user_id of this Grader.  # noqa: E501
        :type: int
        """

        self._user_id = user_id

    @property
    def organisation_id(self):
        """Gets the organisation_id of this Grader.  # noqa: E501

        Organisation ID  # noqa: E501

        :return: The organisation_id of this Grader.  # noqa: E501
        :rtype: int
        """
        return self._organisation_id

    @organisation_id.setter
    def organisation_id(self, organisation_id):
        """Sets the organisation_id of this Grader.

        Organisation ID  # noqa: E501

        :param organisation_id: The organisation_id of this Grader.  # noqa: E501
        :type: int
        """

        self._organisation_id = organisation_id

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
        if issubclass(Grader, dict):
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
        if not isinstance(other, Grader):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
