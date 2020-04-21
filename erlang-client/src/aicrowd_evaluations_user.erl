-module(aicrowd_evaluations_user).

-export([encode/1]).

-export_type([aicrowd_evaluations_user/0]).

-type aicrowd_evaluations_user() ::
    #{ 'id' => integer(),
       'email' := binary(),
       'admin' => boolean(),
       'created_on' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'password_hash' => binary(),
       'total_quota' => integer(),
       'quota' => integer(),
       'organisation_id' := integer(),
       'password' := binary()
     }.

encode(#{ 'id' := Id,
          'email' := Email,
          'admin' := Admin,
          'created_on' := CreatedOn,
          'password_hash' := PasswordHash,
          'total_quota' := TotalQuota,
          'quota' := Quota,
          'organisation_id' := OrganisationId,
          'password' := Password
        }) ->
    #{ 'id' => Id,
       'email' => Email,
       'admin' => Admin,
       'created_on' => CreatedOn,
       'password_hash' => PasswordHash,
       'total_quota' => TotalQuota,
       'quota' => Quota,
       'organisation_id' => OrganisationId,
       'password' => Password
     }.
