=begin comment

AIcrowd Evaluations API

API to create and evaluate custom challenges on AIcrowd!

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

use_ok('AIcrowdEvaluations::OrganisationsApi');

my $api = AIcrowdEvaluations::OrganisationsApi->new();
isa_ok($api, 'AIcrowdEvaluations::OrganisationsApi');

#
# create_organisation test
#
{
    my $payload = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->create_organisation(payload => $payload, x_fields => $x_fields);
}

#
# delete_organisation test
#
{
    my $organisation_id = undef; # replace NULL with a proper value
    my $result = $api->delete_organisation(organisation_id => $organisation_id);
}

#
# get_organisation test
#
{
    my $organisation_id = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->get_organisation(organisation_id => $organisation_id, x_fields => $x_fields);
}

#
# list_organisations test
#
{
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->list_organisations(x_fields => $x_fields);
}

#
# update_organisation test
#
{
    my $organisation_id = undef; # replace NULL with a proper value
    my $payload = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->update_organisation(organisation_id => $organisation_id, payload => $payload, x_fields => $x_fields);
}

#
# update_organisation_quota test
#
{
    my $organisation_id = undef; # replace NULL with a proper value
    my $payload = undef; # replace NULL with a proper value
    my $result = $api->update_organisation_quota(organisation_id => $organisation_id, payload => $payload);
}


1;
