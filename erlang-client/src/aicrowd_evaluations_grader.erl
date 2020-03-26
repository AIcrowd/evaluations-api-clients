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
       'docker_username' := binary(),
       'docker_password' := binary(),
       'docker_registry' => binary(),
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
          'docker_username' := DockerUsername,
          'docker_password' := DockerPassword,
          'docker_registry' := DockerRegistry,
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
       'docker_username' => DockerUsername,
       'docker_password' => DockerPassword,
       'docker_registry' => DockerRegistry,
       'workflow_spec' => WorkflowSpec,
       'evaluation_code' => EvaluationCode,
       'storage_capacity' => StorageCapacity,
       'logs' => Logs,
       'meta' => Meta,
       'status' => Status,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
