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
package AIcrowdEvaluations::GradersApi;

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
# create_grader
#
# 
# 
# @param Grader $payload  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'payload' => {
        data_type => 'Grader',
        description => '',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_grader' } = { 
    	summary => '',
        params => $params,
        returns => 'Grader',
        };
}
# @return Grader
#
sub create_grader {
    my ($self, %args) = @_;

    # verify the required parameter 'payload' is set
    unless (exists $args{'payload'}) {
      croak("Missing the required parameter 'payload' when calling create_grader");
    }

    # parse inputs
    my $_resource_path = '/graders/';

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
    my $_response_object = $self->{api_client}->deserialize('Grader', $response);
    return $_response_object;
}

#
# delete_grader
#
# 
# 
# @param int $grader_id  (required)
{
    my $params = {
    'grader_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_grader' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_grader {
    my ($self, %args) = @_;

    # verify the required parameter 'grader_id' is set
    unless (exists $args{'grader_id'}) {
      croak("Missing the required parameter 'grader_id' when calling delete_grader");
    }

    # parse inputs
    my $_resource_path = '/graders/{grader_id}';

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
    if ( exists $args{'grader_id'}) {
        my $_base_variable = "{" . "grader_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'grader_id'});
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
# get_grader
#
# 
# 
# @param int $grader_id  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'grader_id' => {
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
    __PACKAGE__->method_documentation->{ 'get_grader' } = { 
    	summary => '',
        params => $params,
        returns => 'Grader',
        };
}
# @return Grader
#
sub get_grader {
    my ($self, %args) = @_;

    # verify the required parameter 'grader_id' is set
    unless (exists $args{'grader_id'}) {
      croak("Missing the required parameter 'grader_id' when calling get_grader");
    }

    # parse inputs
    my $_resource_path = '/graders/{grader_id}';

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
    if ( exists $args{'grader_id'}) {
        my $_base_variable = "{" . "grader_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'grader_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Grader', $response);
    return $_response_object;
}

#
# get_grader_logs
#
# 
# 
# @param int $grader_id  (required)
{
    my $params = {
    'grader_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_grader_logs' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub get_grader_logs {
    my ($self, %args) = @_;

    # verify the required parameter 'grader_id' is set
    unless (exists $args{'grader_id'}) {
      croak("Missing the required parameter 'grader_id' when calling get_grader_logs");
    }

    # parse inputs
    my $_resource_path = '/graders/{grader_id}/logs';

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
    if ( exists $args{'grader_id'}) {
        my $_base_variable = "{" . "grader_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'grader_id'});
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
# list_graders
#
# 
# 
# @param string $name Fetch grader with this name (optional)
# @param string $status Fetch graders with this status (optional)
# @param int $user_id Fetch graders created by the user (optional)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'Fetch grader with this name',
        required => '0',
    },
    'status' => {
        data_type => 'string',
        description => 'Fetch graders with this status',
        required => '0',
    },
    'user_id' => {
        data_type => 'int',
        description => 'Fetch graders created by the user',
        required => '0',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_graders' } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[Grader]',
        };
}
# @return ARRAY[Grader]
#
sub list_graders {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/graders/';

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
    if ( exists $args{'name'}) {
        $query_params->{'name'} = $self->{api_client}->to_query_value($args{'name'});
    }

    # query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Grader]', $response);
    return $_response_object;
}

1;
