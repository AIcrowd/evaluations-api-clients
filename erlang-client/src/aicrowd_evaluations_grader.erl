-module(aicrowd_evaluations_grader).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader/0]).

-type aicrowd_evaluations_grader() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'dataset_url' => binary(),
       'code_access_mode' := binary(),
       'cluster_id' => integer(),
       'workflow_spec' => maps:map(),
       'evaluation_code' := binary(),
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
          'code_access_mode' := CodeAccessMode,
          'cluster_id' := ClusterId,
          'workflow_spec' := WorkflowSpec,
          'evaluation_code' := EvaluationCode,
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
       'code_access_mode' => CodeAccessMode,
       'cluster_id' => ClusterId,
       'workflow_spec' => WorkflowSpec,
       'evaluation_code' => EvaluationCode,
       'storage_capacity' => StorageCapacity,
       'logs' => Logs,
       'meta' => Meta,
       'status' => Status,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
