-module(aicrowd_evaluations_grader).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader/0]).

-type aicrowd_evaluations_grader() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'archived' => boolean(),
       'dataset' => maps:map(),
       'cluster_id' => integer(),
       'description' => binary(),
       'workflow_spec' => maps:map(),
       'evaluator_repo' := binary(),
       'evaluator_repo_tag' => binary(),
       'name' => binary(),
       'notifications' => binary(),
       'logs' => binary(),
       'meta' => binary(),
       'status' => binary(),
       'secrets' => maps:map(),
       'wf_name' => binary(),
       'allowed_extensions' => maps:map(),
       'workflow_priority' => integer(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'archived' := Archived,
          'dataset' := Dataset,
          'cluster_id' := ClusterId,
          'description' := Description,
          'workflow_spec' := WorkflowSpec,
          'evaluator_repo' := EvaluatorRepo,
          'evaluator_repo_tag' := EvaluatorRepoTag,
          'name' := Name,
          'notifications' := Notifications,
          'logs' := Logs,
          'meta' := Meta,
          'status' := Status,
          'secrets' := Secrets,
          'wf_name' := WfName,
          'allowed_extensions' := AllowedExtensions,
          'workflow_priority' := WorkflowPriority,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'archived' => Archived,
       'dataset' => Dataset,
       'cluster_id' => ClusterId,
       'description' => Description,
       'workflow_spec' => WorkflowSpec,
       'evaluator_repo' => EvaluatorRepo,
       'evaluator_repo_tag' => EvaluatorRepoTag,
       'name' => Name,
       'notifications' => Notifications,
       'logs' => Logs,
       'meta' => Meta,
       'status' => Status,
       'secrets' => Secrets,
       'wf_name' => WfName,
       'allowed_extensions' => AllowedExtensions,
       'workflow_priority' => WorkflowPriority,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
