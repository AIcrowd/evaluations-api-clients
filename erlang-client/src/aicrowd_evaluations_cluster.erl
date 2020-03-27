-module(aicrowd_evaluations_cluster).

-export([encode/1]).

-export_type([aicrowd_evaluations_cluster/0]).

-type aicrowd_evaluations_cluster() ::
    #{ 'id' => integer(),
       'created' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'updated' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'remote_address' := binary(),
       'auth_token' := binary(),
       'storage_class' => binary(),
       'status' => boolean(),
       'meta' => maps:map(),
       'user_id' => integer(),
       'organisation_id' => integer()
     }.

encode(#{ 'id' := Id,
          'created' := Created,
          'updated' := Updated,
          'remote_address' := RemoteAddress,
          'auth_token' := AuthToken,
          'storage_class' := StorageClass,
          'status' := Status,
          'meta' := Meta,
          'user_id' := UserId,
          'organisation_id' := OrganisationId
        }) ->
    #{ 'id' => Id,
       'created' => Created,
       'updated' => Updated,
       'remote_address' => RemoteAddress,
       'auth_token' => AuthToken,
       'storage_class' => StorageClass,
       'status' => Status,
       'meta' => Meta,
       'user_id' => UserId,
       'organisation_id' => OrganisationId
     }.
