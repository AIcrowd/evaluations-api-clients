-module(aicrowd_evaluations_submission_retry).

-export([encode/1]).

-export_type([aicrowd_evaluations_submission_retry/0]).

-type aicrowd_evaluations_submission_retry() ::
    #{ 'queued' => maps:map(),
       'failed' => list()
     }.

encode(#{ 'queued' := Queued,
          'failed' := Failed
        }) ->
    #{ 'queued' => Queued,
       'failed' => Failed
     }.
