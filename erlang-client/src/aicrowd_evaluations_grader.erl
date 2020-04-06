-module(aicrowd_evaluations_grader).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader/0]).

-type aicrowd_evaluations_grader() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'dataset' => maps:map(),
       'cluster_id' => integer(),
       'workflow_spec' => maps:map(),
       'evaluator_repo' := binary(),
       'evaluator_repo_tag' => binary(),
       'logs' => maps:map(),
       'meta' => maps:map(),
       'status' => binary(),
       'submission_types' => maps:map(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'dataset' := Dataset,
          'cluster_id' := ClusterId,
          'workflow_spec' := WorkflowSpec,
          'evaluator_repo' := EvaluatorRepo,
          'evaluator_repo_tag' := EvaluatorRepoTag,
          'logs' := Logs,
          'meta' := Meta,
          'status' := Status,
          'submission_types' := SubmissionTypes,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'dataset' => Dataset,
       'cluster_id' => ClusterId,
       'workflow_spec' => WorkflowSpec,
       'evaluator_repo' => EvaluatorRepo,
       'evaluator_repo_tag' => EvaluatorRepoTag,
       'logs' => Logs,
       'meta' => Meta,
       'status' => Status,
       'submission_types' => SubmissionTypes,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
