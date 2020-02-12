=begin comment

Evaluations API

API to create and evaluate custom challenges

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::OrganisationsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::SwaggerClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::SwaggerClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# delete_organisation_dao
#
# 
# 
# @param int $organisation_id Organisation identifier (required)
{
    my $params = {
    'organisation_id' => {
        data_type => 'int',
        description => 'Organisation identifier',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_organisation_dao' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_organisation_dao {
    my ($self, %args) = @_;

    # verify the required parameter 'organisation_id' is set
    unless (exists $args{'organisation_id'}) {
      croak("Missing the required parameter 'organisation_id' when calling delete_organisation_dao");
    }

    # parse inputs
    my $_resource_path = '/organisations/{organisation_id}';

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
    if ( exists $args{'organisation_id'}) {
        my $_base_variable = "{" . "organisation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'organisation_id'});
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
# get_organisation_dao
#
# 
# 
# @param int $organisation_id Organisation identifier (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'organisation_id' => {
        data_type => 'int',
        description => 'Organisation identifier',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_organisation_dao' } = { 
    	summary => '',
        params => $params,
        returns => 'Organisation',
        };
}
# @return Organisation
#
sub get_organisation_dao {
    my ($self, %args) = @_;

    # verify the required parameter 'organisation_id' is set
    unless (exists $args{'organisation_id'}) {
      croak("Missing the required parameter 'organisation_id' when calling get_organisation_dao");
    }

    # parse inputs
    my $_resource_path = '/organisations/{organisation_id}';

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
    if ( exists $args{'organisation_id'}) {
        my $_base_variable = "{" . "organisation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'organisation_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Organisation', $response);
    return $_response_object;
}

#
# get_organisation_list_dao
#
# 
# 
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_organisation_list_dao' } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[Organisation]',
        };
}
# @return ARRAY[Organisation]
#
sub get_organisation_list_dao {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/organisations/';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Organisation]', $response);
    return $_response_object;
}

#
# post_organisation_list_dao
#
# 
# 
# @param Organisation $payload  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'payload' => {
        data_type => 'Organisation',
        description => '',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_organisation_list_dao' } = { 
    	summary => '',
        params => $params,
        returns => 'Organisation',
        };
}
# @return Organisation
#
sub post_organisation_list_dao {
    my ($self, %args) = @_;

    # verify the required parameter 'payload' is set
    unless (exists $args{'payload'}) {
      croak("Missing the required parameter 'payload' when calling post_organisation_list_dao");
    }

    # parse inputs
    my $_resource_path = '/organisations/';

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
    my $_response_object = $self->{api_client}->deserialize('Organisation', $response);
    return $_response_object;
}

#
# put_organisation_dao
#
# 
# 
# @param int $organisation_id Organisation identifier (required)
# @param Organisation $payload  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'organisation_id' => {
        data_type => 'int',
        description => 'Organisation identifier',
        required => '1',
    },
    'payload' => {
        data_type => 'Organisation',
        description => '',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'put_organisation_dao' } = { 
    	summary => '',
        params => $params,
        returns => 'Organisation',
        };
}
# @return Organisation
#
sub put_organisation_dao {
    my ($self, %args) = @_;

    # verify the required parameter 'organisation_id' is set
    unless (exists $args{'organisation_id'}) {
      croak("Missing the required parameter 'organisation_id' when calling put_organisation_dao");
    }

    # verify the required parameter 'payload' is set
    unless (exists $args{'payload'}) {
      croak("Missing the required parameter 'payload' when calling put_organisation_dao");
    }

    # parse inputs
    my $_resource_path = '/organisations/{organisation_id}';

    my $_method = 'PUT';
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
    if ( exists $args{'organisation_id'}) {
        my $_base_variable = "{" . "organisation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'organisation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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
    my $_response_object = $self->{api_client}->deserialize('Organisation', $response);
    return $_response_object;
}

#
# put_quota_dao
#
# 
# 
# @param int $organisation_id Organisation identifier (required)
# @param OrganisationQuota $payload  (required)
{
    my $params = {
    'organisation_id' => {
        data_type => 'int',
        description => 'Organisation identifier',
        required => '1',
    },
    'payload' => {
        data_type => 'OrganisationQuota',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'put_quota_dao' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub put_quota_dao {
    my ($self, %args) = @_;

    # verify the required parameter 'organisation_id' is set
    unless (exists $args{'organisation_id'}) {
      croak("Missing the required parameter 'organisation_id' when calling put_quota_dao");
    }

    # verify the required parameter 'payload' is set
    unless (exists $args{'payload'}) {
      croak("Missing the required parameter 'payload' when calling put_quota_dao");
    }

    # parse inputs
    my $_resource_path = '/organisations/addquota/{organisation_id}';

    my $_method = 'PUT';
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
    if ( exists $args{'organisation_id'}) {
        my $_base_variable = "{" . "organisation_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'organisation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'payload'}) {
        $_body_data = $args{'payload'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
