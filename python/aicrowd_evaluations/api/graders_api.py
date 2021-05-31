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


class GradersApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def archive_grader(self, grader_id, **kwargs):  # noqa: E501
        """archive_grader  # noqa: E501

        Archive a grader  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.archive_grader(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.archive_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
        else:
            (data) = self.archive_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
            return data

    def archive_grader_with_http_info(self, grader_id, **kwargs):  # noqa: E501
        """archive_grader  # noqa: E501

        Archive a grader  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.archive_grader_with_http_info(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method archive_grader" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `archive_grader`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

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
            '/graders/{grader_id}/archive', 'POST',
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

    def create_grader(self, payload, **kwargs):  # noqa: E501
        """create_grader  # noqa: E501

        Create a new grader  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.create_grader(payload, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Grader payload: (required)
        :param str x_fields: An optional fields mask
        :return: Grader
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.create_grader_with_http_info(payload, **kwargs)  # noqa: E501
        else:
            (data) = self.create_grader_with_http_info(payload, **kwargs)  # noqa: E501
            return data

    def create_grader_with_http_info(self, payload, **kwargs):  # noqa: E501
        """create_grader  # noqa: E501

        Create a new grader  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.create_grader_with_http_info(payload, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param Grader payload: (required)
        :param str x_fields: An optional fields mask
        :return: Grader
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
                    " to method create_grader" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'payload' is set
        if self.api_client.client_side_validation and ('payload' not in params or
                                                       params['payload'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `payload` when calling `create_grader`")  # noqa: E501

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
            '/graders/', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Grader',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def delete_grader(self, grader_id, **kwargs):  # noqa: E501
        """delete_grader  # noqa: E501

        Delete a grader by its ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_grader(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.delete_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
        else:
            (data) = self.delete_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
            return data

    def delete_grader_with_http_info(self, grader_id, **kwargs):  # noqa: E501
        """delete_grader  # noqa: E501

        Delete a grader by its ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_grader_with_http_info(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method delete_grader" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `delete_grader`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

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
            '/graders/{grader_id}', 'DELETE',
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

    def download_grader_logs(self, grader_id, **kwargs):  # noqa: E501
        """download_grader_logs  # noqa: E501

        Get the grader logs by submission ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.download_grader_logs(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.download_grader_logs_with_http_info(grader_id, **kwargs)  # noqa: E501
        else:
            (data) = self.download_grader_logs_with_http_info(grader_id, **kwargs)  # noqa: E501
            return data

    def download_grader_logs_with_http_info(self, grader_id, **kwargs):  # noqa: E501
        """download_grader_logs  # noqa: E501

        Get the grader logs by submission ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.download_grader_logs_with_http_info(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method download_grader_logs" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `download_grader_logs`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

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
            '/graders/{grader_id}/logs/download', 'GET',
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

    def get_grader(self, grader_id, **kwargs):  # noqa: E501
        """get_grader  # noqa: E501

        Get details of a grader by its ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_grader(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :param str x_fields: An optional fields mask
        :return: Grader
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
        else:
            (data) = self.get_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
            return data

    def get_grader_with_http_info(self, grader_id, **kwargs):  # noqa: E501
        """get_grader  # noqa: E501

        Get details of a grader by its ID  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_grader_with_http_info(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :param str x_fields: An optional fields mask
        :return: Grader
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_grader" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `get_grader`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

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
            '/graders/{grader_id}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Grader',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def get_grader_logs(self, grader_id, **kwargs):  # noqa: E501
        """get_grader_logs  # noqa: E501

        Get grader logs from loki  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_grader_logs(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :param int step: Granularity of logs
        :param int log_lines: Number of lines to fetch
        :param str x_fields: An optional fields mask
        :return: GraderLogs
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.get_grader_logs_with_http_info(grader_id, **kwargs)  # noqa: E501
        else:
            (data) = self.get_grader_logs_with_http_info(grader_id, **kwargs)  # noqa: E501
            return data

    def get_grader_logs_with_http_info(self, grader_id, **kwargs):  # noqa: E501
        """get_grader_logs  # noqa: E501

        Get grader logs from loki  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.get_grader_logs_with_http_info(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :param int step: Granularity of logs
        :param int log_lines: Number of lines to fetch
        :param str x_fields: An optional fields mask
        :return: GraderLogs
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id', 'step', 'log_lines', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method get_grader_logs" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `get_grader_logs`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

        query_params = []
        if 'step' in params:
            query_params.append(('step', params['step']))  # noqa: E501
        if 'log_lines' in params:
            query_params.append(('log_lines', params['log_lines']))  # noqa: E501

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
            '/graders/{grader_id}/logs', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GraderLogs',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def list_graders(self, **kwargs):  # noqa: E501
        """list_graders  # noqa: E501

        List all graders available  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.list_graders(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str per_page: Results to display per page
        :param str page: Page number
        :param str meta: Fetch graders containing this meta value
        :param str name: Fetch grader containing name
        :param str status: Fetch graders with this status
        :param int user_id: Fetch graders created by the user
        :param str x_fields: An optional fields mask
        :return: list[Grader]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.list_graders_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.list_graders_with_http_info(**kwargs)  # noqa: E501
            return data

    def list_graders_with_http_info(self, **kwargs):  # noqa: E501
        """list_graders  # noqa: E501

        List all graders available  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.list_graders_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str per_page: Results to display per page
        :param str page: Page number
        :param str meta: Fetch graders containing this meta value
        :param str name: Fetch grader containing name
        :param str status: Fetch graders with this status
        :param int user_id: Fetch graders created by the user
        :param str x_fields: An optional fields mask
        :return: list[Grader]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['per_page', 'page', 'meta', 'name', 'status', 'user_id', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method list_graders" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'per_page' in params:
            query_params.append(('per_page', params['per_page']))  # noqa: E501
        if 'page' in params:
            query_params.append(('page', params['page']))  # noqa: E501
        if 'meta' in params:
            query_params.append(('meta', params['meta']))  # noqa: E501
        if 'name' in params:
            query_params.append(('name', params['name']))  # noqa: E501
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
            '/graders/', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[Grader]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def unarchive_grader(self, grader_id, **kwargs):  # noqa: E501
        """unarchive_grader  # noqa: E501

        Unarchive a grader  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.unarchive_grader(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.unarchive_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
        else:
            (data) = self.unarchive_grader_with_http_info(grader_id, **kwargs)  # noqa: E501
            return data

    def unarchive_grader_with_http_info(self, grader_id, **kwargs):  # noqa: E501
        """unarchive_grader  # noqa: E501

        Unarchive a grader  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.unarchive_grader_with_http_info(grader_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :return: None
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method unarchive_grader" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `unarchive_grader`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

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
            '/graders/{grader_id}/unarchive', 'POST',
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

    def update_grader(self, grader_id, payload, **kwargs):  # noqa: E501
        """update_grader  # noqa: E501

        Update meta details of a grader by its ID. Warning: There is no data validation.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_grader(grader_id, payload, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :param GraderMeta payload: (required)
        :param str x_fields: An optional fields mask
        :return: Grader
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.update_grader_with_http_info(grader_id, payload, **kwargs)  # noqa: E501
        else:
            (data) = self.update_grader_with_http_info(grader_id, payload, **kwargs)  # noqa: E501
            return data

    def update_grader_with_http_info(self, grader_id, payload, **kwargs):  # noqa: E501
        """update_grader  # noqa: E501

        Update meta details of a grader by its ID. Warning: There is no data validation.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_grader_with_http_info(grader_id, payload, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int grader_id: (required)
        :param GraderMeta payload: (required)
        :param str x_fields: An optional fields mask
        :return: Grader
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['grader_id', 'payload', 'x_fields']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method update_grader" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'grader_id' is set
        if self.api_client.client_side_validation and ('grader_id' not in params or
                                                       params['grader_id'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `grader_id` when calling `update_grader`")  # noqa: E501
        # verify the required parameter 'payload' is set
        if self.api_client.client_side_validation and ('payload' not in params or
                                                       params['payload'] is None):  # noqa: E501
            raise ValueError("Missing the required parameter `payload` when calling `update_grader`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'grader_id' in params:
            path_params['grader_id'] = params['grader_id']  # noqa: E501

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
            '/graders/{grader_id}', 'PATCH',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='Grader',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
