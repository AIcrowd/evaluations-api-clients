-module(aicrowd_evaluations_organisation).

-export([encode/1]).

-export_type([aicrowd_evaluations_organisation/0]).

-type aicrowd_evaluations_organisation() ::
    #{ 'id' => integer(),
       'name' := binary(),
       'poc_email' := binary(),
       'created_on' => aicrowd_evaluations_date_time:aicrowd_evaluations_date_time(),
       'total_quota' => integer(),
       'quota' => integer()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'poc_email' := PocEmail,
          'created_on' := CreatedOn,
          'total_quota' := TotalQuota,
          'quota' := Quota
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'poc_email' => PocEmail,
       'created_on' => CreatedOn,
       'total_quota' => TotalQuota,
       'quota' => Quota
     }.
