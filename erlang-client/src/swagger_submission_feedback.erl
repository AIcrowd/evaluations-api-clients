-module(swagger_submission_feedback).

-export([encode/1]).

-export_type([swagger_submission_feedback/0]).

-type swagger_submission_feedback() ::
    #{ 'status' := binary(),
       'outputs' := binary(),
       'score' := integer(),
       'logs' := binary()
     }.

encode(#{ 'status' := Status,
          'outputs' := Outputs,
          'score' := Score,
          'logs' := Logs
        }) ->
    #{ 'status' => Status,
       'outputs' => Outputs,
       'score' => Score,
       'logs' => Logs
     }.
