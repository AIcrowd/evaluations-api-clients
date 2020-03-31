-module(aicrowd_evaluations_grader).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader/0]).

-type aicrowd_evaluations_grader() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'dataset_url' => binary(),
       'cluster_id' => integer(),
       'workflow_spec' => maps:map(),
       'evaluator_repo' := binary(),
       'evaluator_repo_tag' => binary(),
       'storage_capacity' => binary(),
       'logs' => maps:map(),
       'meta' => maps:map(),
       'status' => binary(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'dataset_url' := DatasetUrl,
          'cluster_id' := ClusterId,
          'workflow_spec' := WorkflowSpec,
          'evaluator_repo' := EvaluatorRepo,
          'evaluator_repo_tag' := EvaluatorRepoTag,
          'storage_capacity' := StorageCapacity,
          'logs' := Logs,
          'meta' := Meta,
          'status' := Status,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'dataset_url' => DatasetUrl,
       'cluster_id' => ClusterId,
       'workflow_spec' => WorkflowSpec,
       'evaluator_repo' => EvaluatorRepo,
       'evaluator_repo_tag' => EvaluatorRepoTag,
       'storage_capacity' => StorageCapacity,
       'logs' => Logs,
       'meta' => Meta,
       'status' => Status,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
