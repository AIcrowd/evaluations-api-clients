-module(swagger_grader_feedback).

-export([encode/1]).

-export_type([swagger_grader_feedback/0]).

-type swagger_grader_feedback() ::
    #{ 'status' := boolean(),
       'workflow_spec' := binary()
     }.

encode(#{ 'status' := Status,
          'workflow_spec' := WorkflowSpec
        }) ->
    #{ 'status' => Status,
       'workflow_spec' => WorkflowSpec
     }.
