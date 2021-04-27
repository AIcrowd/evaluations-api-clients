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

use_ok('AIcrowdEvaluations::SubmissionsApi');

my $api = AIcrowdEvaluations::SubmissionsApi->new();
isa_ok($api, 'AIcrowdEvaluations::SubmissionsApi');

#
# create_submission test
#
{
    my $payload = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->create_submission(payload => $payload, x_fields => $x_fields);
}

#
# delete_submission test
#
{
    my $submission_id = undef; # replace NULL with a proper value
    my $result = $api->delete_submission(submission_id => $submission_id);
}

#
# download_submission_logs test
#
{
    my $submission_id = undef; # replace NULL with a proper value
    my $result = $api->download_submission_logs(submission_id => $submission_id);
}

#
# get_submission test
#
{
    my $submission_id = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->get_submission(submission_id => $submission_id, x_fields => $x_fields);
}

#
# get_submission_data test
#
{
    my $submission_id = undef; # replace NULL with a proper value
    my $result = $api->get_submission_data(submission_id => $submission_id);
}

#
# get_submission_logs test
#
{
    my $submission_id = undef; # replace NULL with a proper value
    my $step = undef; # replace NULL with a proper value
    my $log_lines = undef; # replace NULL with a proper value
    my $result = $api->get_submission_logs(submission_id => $submission_id, step => $step, log_lines => $log_lines);
}

#
# list_submissions test
#
{
    my $per_page = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $meta = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $grader_id = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->list_submissions(per_page => $per_page, page => $page, meta => $meta, status => $status, grader_id => $grader_id, user_id => $user_id, x_fields => $x_fields);
}

#
# retry_submissions test
#
{
    my $payload = undef; # replace NULL with a proper value
    my $x_fields = undef; # replace NULL with a proper value
    my $result = $api->retry_submissions(payload => $payload, x_fields => $x_fields);
}


1;
