-module(aicrowd_evaluations_grader_feedback).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader_feedback/0]).

-type aicrowd_evaluations_grader_feedback() ::
    #{ 'dataset' := binary(),
       'status' := boolean(),
       'notifications' := binary(),
       'workflow_spec' := binary(),
       'submission_types' := binary()
     }.

encode(#{ 'dataset' := Dataset,
          'status' := Status,
          'notifications' := Notifications,
          'workflow_spec' := WorkflowSpec,
          'submission_types' := SubmissionTypes
        }) ->
    #{ 'dataset' => Dataset,
       'status' => Status,
       'notifications' => Notifications,
       'workflow_spec' => WorkflowSpec,
       'submission_types' => SubmissionTypes
     }.
