-module(aicrowd_evaluations_submission_logs).

-export([encode/1]).

-export_type([aicrowd_evaluations_submission_logs/0]).

-type aicrowd_evaluations_submission_logs() ::
    #{ 'status' => binary(),
       'data' => maps:map()
     }.

encode(#{ 'status' := Status,
          'data' := Data
        }) ->
    #{ 'status' => Status,
       'data' => Data
     }.
