-module(swagger_grader).

-export([encode/1]).

-export_type([swagger_grader/0]).

-type swagger_grader() ::
    #{ 'id' => integer(),
       'created' => swagger_date_time:swagger_date_time(),
       'updated' => swagger_date_time:swagger_date_time(),
       'dataset_url' => binary(),
       'code_access_mode' => binary(),
       'code_access_auth_key' => binary(),
       'cluster_id' => integer(),
       'docker_username' => binary(),
       'docker_password' => binary(),
       'docker_registry' => binary(),
       'workflow_spec' => maps:map(),
       'evaluation_code' => binary(),
       'storage_capacity' => binary(),
       'meta' => maps:map(),
       'status' => boolean(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'dataset_url' := DatasetUrl,
          'code_access_mode' := CodeAccessMode,
          'code_access_auth_key' := CodeAccessAuthKey,
          'cluster_id' := ClusterId,
          'docker_username' := DockerUsername,
          'docker_password' := DockerPassword,
          'docker_registry' := DockerRegistry,
          'workflow_spec' := WorkflowSpec,
          'evaluation_code' := EvaluationCode,
          'storage_capacity' := StorageCapacity,
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
       'code_access_auth_key' => CodeAccessAuthKey,
       'cluster_id' => ClusterId,
       'docker_username' => DockerUsername,
       'docker_password' => DockerPassword,
       'docker_registry' => DockerRegistry,
       'workflow_spec' => WorkflowSpec,
       'evaluation_code' => EvaluationCode,
       'storage_capacity' => StorageCapacity,
       'meta' => Meta,
       'status' => Status,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
