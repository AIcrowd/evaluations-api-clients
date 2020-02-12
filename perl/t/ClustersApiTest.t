=begin comment

Evaluations API

API to create and evaluate custom challenges

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::ClustersApi');

my $api = WWW::SwaggerClient::ClustersApi->new();
isa_ok($api, 'WWW::SwaggerClient::ClustersApi');

#
# delete_cluster_dao test
#
{
    my $cluster_id = undef; # replace NULL with a proper value
    my $result = $api->delete_cluster_dao(cluster_id => $cluster_id);
}

#
# get_cluster_dao test
#
{
    my $cluster_id = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->get_cluster_dao(cluster_id => $cluster_id, x_fields => $x_fields);
}

#
# get_grader_list_dao test
#
{
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->get_grader_list_dao(x_fields => $x_fields);
}

#
# post_grader_list_dao test
#
{
    my $payload = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->post_grader_list_dao(payload => $payload, x_fields => $x_fields);
}


1;
