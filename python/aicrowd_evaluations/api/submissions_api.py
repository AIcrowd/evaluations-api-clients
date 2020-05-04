# coding: utf-8

"""
    AIcrowd Evaluations API

    API to create and evaluate custom challenges on AIcrowd!  # noqa: E501

    OpenAPI spec version: 1.0.0
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from aicrowd_evaluations.api_client import ApiClient


class SubmissionsApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def create_submission(self, payload, **kwargs):  # noqa: E501
        """create_submission  # noqa: E501

        Make a new submission  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.create_submission(payload, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Submissions payload: (required)
        :param str x_fields: An optional fields mask
        :return: Submissions
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.create_submission_with_http_info(payload, **kwargs)  # noqa: E501
        else:
            (data) = self.create_submission_with_http_info(payload, **kwargs)  # noqa: E501
            return data

    def create_submission_with_http_info(self, payload, **kwargs):  # noqa: E501
        """create_submission  # noqa: E501

        Make a new submission  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.create_submission_with_http_info(payload, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Submissions payload: (required)
        :param str x_fields: An optional fields mask
        :return: Submissions
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['payload', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method create_submission" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'payload' is set
        if ('payload' not in params or
                params['payload'] is None):
            raise ValueError("Missing the required parameter `payload` when calling `create_submission`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []

        header_params = {}
        if 'x_fields' in params:
            header_params['X-Fields'] = params['x_fields']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        if 'payload' in params:
            body_params = params['payload']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/submissions/', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Submissions',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def delete_submission(self, submission_id, **kwargs):  # noqa: E501
        """delete_submission  # noqa: E501

        Stop evaluation of a submission and delete it  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_submission(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.delete_submission_with_http_info(submission_id, **kwargs)  # noqa: E501
        else:
            (data) = self.delete_submission_with_http_info(submission_id, **kwargs)  # noqa: E501
            return data

    def delete_submission_with_http_info(self, submission_id, **kwargs):  # noqa: E501
        """delete_submission  # noqa: E501

        Stop evaluation of a submission and delete it  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_submission_with_http_info(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['submission_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method delete_submission" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'submission_id' is set
        if ('submission_id' not in params or
                params['submission_id'] is None):
            raise ValueError("Missing the required parameter `submission_id` when calling `delete_submission`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'submission_id' in params:
            path_params['submission_id'] = params['submission_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/submissions/{submission_id}', 'DELETE',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_submission(self, submission_id, **kwargs):  # noqa: E501
        """get_submission  # noqa: E501

        Get details of a submission by its ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_submission(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :param str x_fields: An optional fields mask
        :return: Submissions
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_submission_with_http_info(submission_id, **kwargs)  # noqa: E501
        else:
            (data) = self.get_submission_with_http_info(submission_id, **kwargs)  # noqa: E501
            return data

    def get_submission_with_http_info(self, submission_id, **kwargs):  # noqa: E501
        """get_submission  # noqa: E501

        Get details of a submission by its ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_submission_with_http_info(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :param str x_fields: An optional fields mask
        :return: Submissions
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['submission_id', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_submission" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'submission_id' is set
        if ('submission_id' not in params or
                params['submission_id'] is None):
            raise ValueError("Missing the required parameter `submission_id` when calling `get_submission`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'submission_id' in params:
            path_params['submission_id'] = params['submission_id']  # noqa: E501

        query_params = []

        header_params = {}
        if 'x_fields' in params:
            header_params['X-Fields'] = params['x_fields']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/submissions/{submission_id}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Submissions',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_submission_data(self, submission_id, **kwargs):  # noqa: E501
        """get_submission_data  # noqa: E501

        Get the submission data by submission ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_submission_data(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_submission_data_with_http_info(submission_id, **kwargs)  # noqa: E501
        else:
            (data) = self.get_submission_data_with_http_info(submission_id, **kwargs)  # noqa: E501
            return data

    def get_submission_data_with_http_info(self, submission_id, **kwargs):  # noqa: E501
        """get_submission_data  # noqa: E501

        Get the submission data by submission ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_submission_data_with_http_info(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['submission_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_submission_data" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'submission_id' is set
        if ('submission_id' not in params or
                params['submission_id'] is None):
            raise ValueError("Missing the required parameter `submission_id` when calling `get_submission_data`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'submission_id' in params:
            path_params['submission_id'] = params['submission_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/submissions/{submission_id}/data', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_submission_logs(self, submission_id, **kwargs):  # noqa: E501
        """get_submission_logs  # noqa: E501

        Get the submission logs by submission ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_submission_logs(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_submission_logs_with_http_info(submission_id, **kwargs)  # noqa: E501
        else:
            (data) = self.get_submission_logs_with_http_info(submission_id, **kwargs)  # noqa: E501
            return data

    def get_submission_logs_with_http_info(self, submission_id, **kwargs):  # noqa: E501
        """get_submission_logs  # noqa: E501

        Get the submission logs by submission ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_submission_logs_with_http_info(submission_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int submission_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['submission_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_submission_logs" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'submission_id' is set
        if ('submission_id' not in params or
                params['submission_id'] is None):
            raise ValueError("Missing the required parameter `submission_id` when calling `get_submission_logs`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'submission_id' in params:
            path_params['submission_id'] = params['submission_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/submissions/{submission_id}/logs', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type=None,  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def list_submissions(self, **kwargs):  # noqa: E501
        """list_submissions  # noqa: E501

        List all submissions available  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.list_submissions(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str meta: Fetch submissions with this meta value
        :param str status: Fetch submissions with this status
        :param int user_id: Fetch submissions created by the user
        :param str x_fields: An optional fields mask
        :return: list[Submissions]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.list_submissions_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.list_submissions_with_http_info(**kwargs)  # noqa: E501
            return data

    def list_submissions_with_http_info(self, **kwargs):  # noqa: E501
        """list_submissions  # noqa: E501

        List all submissions available  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.list_submissions_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str meta: Fetch submissions with this meta value
        :param str status: Fetch submissions with this status
        :param int user_id: Fetch submissions created by the user
        :param str x_fields: An optional fields mask
        :return: list[Submissions]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['meta', 'status', 'user_id', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method list_submissions" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'meta' in params:
            query_params.append(('meta', params['meta']))  # noqa: E501
        if 'status' in params:
            query_params.append(('status', params['status']))  # noqa: E501
        if 'user_id' in params:
            query_params.append(('user_id', params['user_id']))  # noqa: E501

        header_params = {}
        if 'x_fields' in params:
            header_params['X-Fields'] = params['x_fields']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['api_key']  # noqa: E501

        return self.api_client.call_api(
            '/submissions/', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[Submissions]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
