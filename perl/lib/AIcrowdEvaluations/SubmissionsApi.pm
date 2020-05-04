=begin comment

AIcrowd Evaluations API

API to create and evaluate custom challenges on AIcrowd!

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package AIcrowdEvaluations::SubmissionsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use AIcrowdEvaluations::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'AIcrowdEvaluations::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = AIcrowdEvaluations::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_submission
#
# 
# 
# @param Submissions $payload  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'payload' => {
        data_type => 'Submissions',
        description => '',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_submission' } = { 
    	summary => '',
        params => $params,
        returns => 'Submissions',
        };
}
# @return Submissions
#
sub create_submission {
    my ($self, %args) = @_;

    # verify the required parameter 'payload' is set
    unless (exists $args{'payload'}) {
      croak("Missing the required parameter 'payload' when calling create_submission");
    }

    # parse inputs
    my $_resource_path = '/submissions/';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'x_fields'}) {
        $header_params->{'X-Fields'} = $self->{api_client}->to_header_value($args{'x_fields'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'payload'}) {
        $_body_data = $args{'payload'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Submissions', $response);
    return $_response_object;
}

#
# delete_submission
#
# 
# 
# @param int $submission_id  (required)
{
    my $params = {
    'submission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_submission' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_submission {
    my ($self, %args) = @_;

    # verify the required parameter 'submission_id' is set
    unless (exists $args{'submission_id'}) {
      croak("Missing the required parameter 'submission_id' when calling delete_submission");
    }

    # parse inputs
    my $_resource_path = '/submissions/{submission_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'submission_id'}) {
        my $_base_variable = "{" . "submission_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'submission_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_submission
#
# 
# 
# @param int $submission_id  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'submission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_submission' } = { 
    	summary => '',
        params => $params,
        returns => 'Submissions',
        };
}
# @return Submissions
#
sub get_submission {
    my ($self, %args) = @_;

    # verify the required parameter 'submission_id' is set
    unless (exists $args{'submission_id'}) {
      croak("Missing the required parameter 'submission_id' when calling get_submission");
    }

    # parse inputs
    my $_resource_path = '/submissions/{submission_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'x_fields'}) {
        $header_params->{'X-Fields'} = $self->{api_client}->to_header_value($args{'x_fields'});
    }

    # path params
    if ( exists $args{'submission_id'}) {
        my $_base_variable = "{" . "submission_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'submission_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Submissions', $response);
    return $_response_object;
}

#
# get_submission_data
#
# 
# 
# @param int $submission_id  (required)
{
    my $params = {
    'submission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_submission_data' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub get_submission_data {
    my ($self, %args) = @_;

    # verify the required parameter 'submission_id' is set
    unless (exists $args{'submission_id'}) {
      croak("Missing the required parameter 'submission_id' when calling get_submission_data");
    }

    # parse inputs
    my $_resource_path = '/submissions/{submission_id}/data';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'submission_id'}) {
        my $_base_variable = "{" . "submission_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'submission_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_submission_logs
#
# 
# 
# @param int $submission_id  (required)
{
    my $params = {
    'submission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_submission_logs' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub get_submission_logs {
    my ($self, %args) = @_;

    # verify the required parameter 'submission_id' is set
    unless (exists $args{'submission_id'}) {
      croak("Missing the required parameter 'submission_id' when calling get_submission_logs");
    }

    # parse inputs
    my $_resource_path = '/submissions/{submission_id}/logs';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'submission_id'}) {
        my $_base_variable = "{" . "submission_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'submission_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# list_submissions
#
# 
# 
# @param string $meta Fetch submissions containing this meta value (optional)
# @param string $status Fetch submissions with this status (optional)
# @param int $grader_id Fetch submissions for a grader (optional)
# @param int $user_id Fetch submissions created by the user (optional)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'meta' => {
        data_type => 'string',
        description => 'Fetch submissions containing this meta value',
        required => '0',
    },
    'status' => {
        data_type => 'string',
        description => 'Fetch submissions with this status',
        required => '0',
    },
    'grader_id' => {
        data_type => 'int',
        description => 'Fetch submissions for a grader',
        required => '0',
    },
    'user_id' => {
        data_type => 'int',
        description => 'Fetch submissions created by the user',
        required => '0',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_submissions' } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[Submissions]',
        };
}
# @return ARRAY[Submissions]
#
sub list_submissions {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/submissions/';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'meta'}) {
        $query_params->{'meta'} = $self->{api_client}->to_query_value($args{'meta'});
    }

    # query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
    }

    # query params
    if ( exists $args{'grader_id'}) {
        $query_params->{'grader_id'} = $self->{api_client}->to_query_value($args{'grader_id'});
    }

    # query params
    if ( exists $args{'user_id'}) {
        $query_params->{'user_id'} = $self->{api_client}->to_query_value($args{'user_id'});
    }

    # header params
    if ( exists $args{'x_fields'}) {
        $header_params->{'X-Fields'} = $self->{api_client}->to_header_value($args{'x_fields'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Submissions]', $response);
    return $_response_object;
}

1;
