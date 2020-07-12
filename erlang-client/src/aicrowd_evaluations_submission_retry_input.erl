-module(aicrowd_evaluations_submission_retry_input).

-export([encode/1]).

-export_type([aicrowd_evaluations_submission_retry_input/0]).

-type aicrowd_evaluations_submission_retry_input() ::
    #{ 'submissions' => list()
     }.

encode(#{ 'submissions' := Submissions
        }) ->
    #{ 'submissions' => Submissions
     }.
