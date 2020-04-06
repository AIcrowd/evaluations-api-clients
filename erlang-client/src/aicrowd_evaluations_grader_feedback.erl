-module(aicrowd_evaluations_grader_feedback).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader_feedback/0]).

-type aicrowd_evaluations_grader_feedback() ::
    #{ 'status' := boolean(),
       'workflow_spec' := binary(),
       'submission_types' := binary()
     }.

encode(#{ 'status' := Status,
          'workflow_spec' := WorkflowSpec,
          'submission_types' := SubmissionTypes
        }) ->
    #{ 'status' => Status,
       'workflow_spec' => WorkflowSpec,
       'submission_types' => SubmissionTypes
     }.
