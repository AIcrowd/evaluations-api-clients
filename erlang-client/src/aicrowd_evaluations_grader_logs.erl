-module(aicrowd_evaluations_grader_logs).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader_logs/0]).

-type aicrowd_evaluations_grader_logs() ::
    #{ 'status' => binary(),
       'data' => maps:map()
     }.

encode(#{ 'status' := Status,
          'data' := Data
        }) ->
    #{ 'status' => Status,
       'data' => Data
     }.
