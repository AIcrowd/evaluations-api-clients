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

use_ok('WWW::SwaggerClient::AuthApi');

my $api = WWW::SwaggerClient::AuthApi->new();
isa_ok($api, 'WWW::SwaggerClient::AuthApi');

#
# logout_a_user test
#
{
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->logout_a_user(x_fields => $x_fields);
}

#
# user_login test
#
{
    my $payload = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->user_login(payload => $payload, x_fields => $x_fields);
}


1;
