-module(swagger_user_quota).

-export([encode/1]).

-export_type([swagger_user_quota/0]).

-type swagger_user_quota() ::
    #{ 'quota' := integer()
     }.

encode(#{ 'quota' := Quota
        }) ->
    #{ 'quota' => Quota
     }.
