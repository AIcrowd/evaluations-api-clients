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
package AIcrowdEvaluations::ClustersApi;

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
# create_cluster
#
# 
# 
# @param Cluster $payload  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'payload' => {
        data_type => 'Cluster',
        description => '',
        required => '1',
    },
    'x_fields' => {
        data_type => 'string',
        description => 'An optional fields mask',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_cluster' } = { 
    	summary => '',
        params => $params,
        returns => 'Cluster',
        };
}
# @return Cluster
#
sub create_cluster {
    my ($self, %args) = @_;

    # verify the required parameter 'payload' is set
    unless (exists $args{'payload'}) {
      croak("Missing the required parameter 'payload' when calling create_cluster");
    }

    # parse inputs
    my $_resource_path = '/clusters/';

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
    my $_response_object = $self->{api_client}->deserialize('Cluster', $response);
    return $_response_object;
}

#
# delete_cluster
#
# 
# 
# @param int $cluster_id  (required)
{
    my $params = {
    'cluster_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_cluster' } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_cluster {
    my ($self, %args) = @_;

    # verify the required parameter 'cluster_id' is set
    unless (exists $args{'cluster_id'}) {
      croak("Missing the required parameter 'cluster_id' when calling delete_cluster");
    }

    # parse inputs
    my $_resource_path = '/clusters/{cluster_id}';

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
    if ( exists $args{'cluster_id'}) {
        my $_base_variable = "{" . "cluster_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'cluster_id'});
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
# get_cluster
#
# 
# 
# @param int $cluster_id  (required)
# @param string $x_fields An optional fields mask (optional)
{
    my $params = {
    'cluster_id' => {
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
    __PACKAGE__->method_documentation->{ 'get_cluster' } = { 
    	summary => '',
        params => $params,
        returns => 'Cluster',
        };
}
# @return Cluster
#
sub get_cluster {
    my ($self, %args) = @_;

    # verify the required parameter 'cluster_id' is set
    unless (exists $args{'cluster_id'}) {
      croak("Missing the required parameter 'cluster_id' when calling get_cluster");
    }

    # parse inputs
    my $_resource_path = '/clusters/{cluster_id}';

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
    if ( exists $args{'cluster_id'}) {
        my $_base_variable = "{" . "cluster_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'cluster_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Cluster', $response);
    return $_response_object;
}

#
# list_clusters
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
    __PACKAGE__->method_documentation->{ 'list_clusters' } = { 
    	summary => '',
        params => $params,
        returns => 'ARRAY[Cluster]',
        };
}
# @return ARRAY[Cluster]
#
sub list_clusters {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/clusters/';

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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Cluster]', $response);
    return $_response_object;
}

1;
