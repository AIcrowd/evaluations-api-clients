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


class Submissions(object):
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
        'grader_id': 'int',
        'submission_data': 'object',
        'status': 'str',
        'output': 'str',
        'additional_outputs': 'object',
        'logs': 'str',
        'started': 'datetime',
        'ended': 'datetime',
        'meta': 'str',
        'wf_name': 'str',
        'workflow_priority': 'int',
        'minimal_run': 'bool',
        'user_id': 'int',
        'organisation_id': 'int'
    }

    attribute_map = {
        'id': 'id',
        'created': 'created',
        'updated': 'updated',
        'grader_id': 'grader_id',
        'submission_data': 'submission_data',
        'status': 'status',
        'output': 'output',
        'additional_outputs': 'additional_outputs',
        'logs': 'logs',
        'started': 'started',
        'ended': 'ended',
        'meta': 'meta',
        'wf_name': 'wf_name',
        'workflow_priority': 'workflow_priority',
        'minimal_run': 'minimal_run',
        'user_id': 'user_id',
        'organisation_id': 'organisation_id'
    }

    def __init__(self, id=None, created=None, updated=None, grader_id=None, submission_data=None, status=None, output=None, additional_outputs=None, logs=None, started=None, ended=None, meta=None, wf_name=None, workflow_priority=None, minimal_run=None, user_id=None, organisation_id=None, _configuration=None):  # noqa: E501
        """Submissions - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._id = None
        self._created = None
        self._updated = None
        self._grader_id = None
        self._submission_data = None
        self._status = None
        self._output = None
        self._additional_outputs = None
        self._logs = None
        self._started = None
        self._ended = None
        self._meta = None
        self._wf_name = None
        self._workflow_priority = None
        self._minimal_run = None
        self._user_id = None
        self._organisation_id = None
        self.discriminator = None

        if id is not None:
            self.id = id
        if created is not None:
            self.created = created
        if updated is not None:
            self.updated = updated
        self.grader_id = grader_id
        if submission_data is not None:
            self.submission_data = submission_data
        if status is not None:
            self.status = status
        if output is not None:
            self.output = output
        if additional_outputs is not None:
            self.additional_outputs = additional_outputs
        if logs is not None:
            self.logs = logs
        if started is not None:
            self.started = started
        if ended is not None:
            self.ended = ended
        if meta is not None:
            self.meta = meta
        if wf_name is not None:
            self.wf_name = wf_name
        if workflow_priority is not None:
            self.workflow_priority = workflow_priority
        if minimal_run is not None:
            self.minimal_run = minimal_run
        if user_id is not None:
            self.user_id = user_id
        if organisation_id is not None:
            self.organisation_id = organisation_id

    @property
    def id(self):
        """Gets the id of this Submissions.  # noqa: E501

        ID  # noqa: E501

        :return: The id of this Submissions.  # noqa: E501
        :rtype: int
        """
        return self._id

    @id.setter
    def id(self, id):
        """Sets the id of this Submissions.

        ID  # noqa: E501

        :param id: The id of this Submissions.  # noqa: E501
        :type: int
        """

        self._id = id

    @property
    def created(self):
        """Gets the created of this Submissions.  # noqa: E501

        Creation time  # noqa: E501

        :return: The created of this Submissions.  # noqa: E501
        :rtype: datetime
        """
        return self._created

    @created.setter
    def created(self, created):
        """Sets the created of this Submissions.

        Creation time  # noqa: E501

        :param created: The created of this Submissions.  # noqa: E501
        :type: datetime
        """

        self._created = created

    @property
    def updated(self):
        """Gets the updated of this Submissions.  # noqa: E501

        Last updation time  # noqa: E501

        :return: The updated of this Submissions.  # noqa: E501
        :rtype: datetime
        """
        return self._updated

    @updated.setter
    def updated(self, updated):
        """Sets the updated of this Submissions.

        Last updation time  # noqa: E501

        :param updated: The updated of this Submissions.  # noqa: E501
        :type: datetime
        """

        self._updated = updated

    @property
    def grader_id(self):
        """Gets the grader_id of this Submissions.  # noqa: E501

        Grader identifier  # noqa: E501

        :return: The grader_id of this Submissions.  # noqa: E501
        :rtype: int
        """
        return self._grader_id

    @grader_id.setter
    def grader_id(self, grader_id):
        """Sets the grader_id of this Submissions.

        Grader identifier  # noqa: E501

        :param grader_id: The grader_id of this Submissions.  # noqa: E501
        :type: int
        """
        if self._configuration.client_side_validation and grader_id is None:
            raise ValueError("Invalid value for `grader_id`, must not be `None`")  # noqa: E501

        self._grader_id = grader_id

    @property
    def submission_data(self):
        """Gets the submission_data of this Submissions.  # noqa: E501

        URL to the submission code  # noqa: E501

        :return: The submission_data of this Submissions.  # noqa: E501
        :rtype: object
        """
        return self._submission_data

    @submission_data.setter
    def submission_data(self, submission_data):
        """Sets the submission_data of this Submissions.

        URL to the submission code  # noqa: E501

        :param submission_data: The submission_data of this Submissions.  # noqa: E501
        :type: object
        """

        self._submission_data = submission_data

    @property
    def status(self):
        """Gets the status of this Submissions.  # noqa: E501

        Current status of the submission  # noqa: E501

        :return: The status of this Submissions.  # noqa: E501
        :rtype: str
        """
        return self._status

    @status.setter
    def status(self, status):
        """Sets the status of this Submissions.

        Current status of the submission  # noqa: E501

        :param status: The status of this Submissions.  # noqa: E501
        :type: str
        """

        self._status = status

    @property
    def output(self):
        """Gets the output of this Submissions.  # noqa: E501

        S3 link of the output (available after the evaluation)  # noqa: E501

        :return: The output of this Submissions.  # noqa: E501
        :rtype: str
        """
        return self._output

    @output.setter
    def output(self, output):
        """Sets the output of this Submissions.

        S3 link of the output (available after the evaluation)  # noqa: E501

        :param output: The output of this Submissions.  # noqa: E501
        :type: str
        """

        self._output = output

    @property
    def additional_outputs(self):
        """Gets the additional_outputs of this Submissions.  # noqa: E501

        Array of any additional outputs  # noqa: E501

        :return: The additional_outputs of this Submissions.  # noqa: E501
        :rtype: object
        """
        return self._additional_outputs

    @additional_outputs.setter
    def additional_outputs(self, additional_outputs):
        """Sets the additional_outputs of this Submissions.

        Array of any additional outputs  # noqa: E501

        :param additional_outputs: The additional_outputs of this Submissions.  # noqa: E501
        :type: object
        """

        self._additional_outputs = additional_outputs

    @property
    def logs(self):
        """Gets the logs of this Submissions.  # noqa: E501

        S3 link of the STDOUT of the evaluation  # noqa: E501

        :return: The logs of this Submissions.  # noqa: E501
        :rtype: str
        """
        return self._logs

    @logs.setter
    def logs(self, logs):
        """Sets the logs of this Submissions.

        S3 link of the STDOUT of the evaluation  # noqa: E501

        :param logs: The logs of this Submissions.  # noqa: E501
        :type: str
        """

        self._logs = logs

    @property
    def started(self):
        """Gets the started of this Submissions.  # noqa: E501

        Evaluation start time  # noqa: E501

        :return: The started of this Submissions.  # noqa: E501
        :rtype: datetime
        """
        return self._started

    @started.setter
    def started(self, started):
        """Sets the started of this Submissions.

        Evaluation start time  # noqa: E501

        :param started: The started of this Submissions.  # noqa: E501
        :type: datetime
        """

        self._started = started

    @property
    def ended(self):
        """Gets the ended of this Submissions.  # noqa: E501

        Evaluation end time  # noqa: E501

        :return: The ended of this Submissions.  # noqa: E501
        :rtype: datetime
        """
        return self._ended

    @ended.setter
    def ended(self, ended):
        """Sets the ended of this Submissions.

        Evaluation end time  # noqa: E501

        :param ended: The ended of this Submissions.  # noqa: E501
        :type: datetime
        """

        self._ended = ended

    @property
    def meta(self):
        """Gets the meta of this Submissions.  # noqa: E501

        Additional meta data of the grader  # noqa: E501

        :return: The meta of this Submissions.  # noqa: E501
        :rtype: str
        """
        return self._meta

    @meta.setter
    def meta(self, meta):
        """Sets the meta of this Submissions.

        Additional meta data of the grader  # noqa: E501

        :param meta: The meta of this Submissions.  # noqa: E501
        :type: str
        """

        self._meta = meta

    @property
    def wf_name(self):
        """Gets the wf_name of this Submissions.  # noqa: E501

        Name of the workflow used to evaluate submission  # noqa: E501

        :return: The wf_name of this Submissions.  # noqa: E501
        :rtype: str
        """
        return self._wf_name

    @wf_name.setter
    def wf_name(self, wf_name):
        """Sets the wf_name of this Submissions.

        Name of the workflow used to evaluate submission  # noqa: E501

        :param wf_name: The wf_name of this Submissions.  # noqa: E501
        :type: str
        """

        self._wf_name = wf_name

    @property
    def workflow_priority(self):
        """Gets the workflow_priority of this Submissions.  # noqa: E501

        Workflow priority to assign  # noqa: E501

        :return: The workflow_priority of this Submissions.  # noqa: E501
        :rtype: int
        """
        return self._workflow_priority

    @workflow_priority.setter
    def workflow_priority(self, workflow_priority):
        """Sets the workflow_priority of this Submissions.

        Workflow priority to assign  # noqa: E501

        :param workflow_priority: The workflow_priority of this Submissions.  # noqa: E501
        :type: int
        """

        self._workflow_priority = workflow_priority

    @property
    def minimal_run(self):
        """Gets the minimal_run of this Submissions.  # noqa: E501

        Remove steps like build-image, services, etc from the workflow. Only valid for retries  # noqa: E501

        :return: The minimal_run of this Submissions.  # noqa: E501
        :rtype: bool
        """
        return self._minimal_run

    @minimal_run.setter
    def minimal_run(self, minimal_run):
        """Sets the minimal_run of this Submissions.

        Remove steps like build-image, services, etc from the workflow. Only valid for retries  # noqa: E501

        :param minimal_run: The minimal_run of this Submissions.  # noqa: E501
        :type: bool
        """

        self._minimal_run = minimal_run

    @property
    def user_id(self):
        """Gets the user_id of this Submissions.  # noqa: E501

        User ID  # noqa: E501

        :return: The user_id of this Submissions.  # noqa: E501
        :rtype: int
        """
        return self._user_id

    @user_id.setter
    def user_id(self, user_id):
        """Sets the user_id of this Submissions.

        User ID  # noqa: E501

        :param user_id: The user_id of this Submissions.  # noqa: E501
        :type: int
        """

        self._user_id = user_id

    @property
    def organisation_id(self):
        """Gets the organisation_id of this Submissions.  # noqa: E501

        Organisation ID  # noqa: E501

        :return: The organisation_id of this Submissions.  # noqa: E501
        :rtype: int
        """
        return self._organisation_id

    @organisation_id.setter
    def organisation_id(self, organisation_id):
        """Sets the organisation_id of this Submissions.

        Organisation ID  # noqa: E501

        :param organisation_id: The organisation_id of this Submissions.  # noqa: E501
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
        if issubclass(Submissions, dict):
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
        if not isinstance(other, Submissions):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, Submissions):
            return True

        return self.to_dict() != other.to_dict()
