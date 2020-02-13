-module(swagger_organisation).

-export([encode/1]).

-export_type([swagger_organisation/0]).

-type swagger_organisation() ::
    #{ 'id' => integer(),
       'name' := binary(),
       'poc_email' := binary(),
       'created_on' => swagger_date_time:swagger_date_time(),
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
