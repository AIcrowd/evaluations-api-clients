-module(aicrowd_evaluations_cluster).

-export([encode/1]).

-export_type([aicrowd_evaluations_cluster/0]).

-type aicrowd_evaluations_cluster() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'remote_address' := binary(),
       'auth_token' := binary(),
       'docker_username' := binary(),
       'docker_registry' => binary(),
       'namespace' => binary(),
       'storage_class' => binary(),
       'status' => boolean(),
       'wf_name' => binary(),
       'argo_host' => binary(),
       'argo_token' => binary(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'remote_address' := RemoteAddress,
          'auth_token' := AuthToken,
          'docker_username' := DockerUsername,
          'docker_registry' := DockerRegistry,
          'namespace' := Namespace,
          'storage_class' := StorageClass,
          'status' := Status,
          'wf_name' := WfName,
          'argo_host' := ArgoHost,
          'argo_token' := ArgoToken,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'remote_address' => RemoteAddress,
       'auth_token' => AuthToken,
       'docker_username' => DockerUsername,
       'docker_registry' => DockerRegistry,
       'namespace' => Namespace,
       'storage_class' => StorageClass,
       'status' => Status,
       'wf_name' => WfName,
       'argo_host' => ArgoHost,
       'argo_token' => ArgoToken,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
