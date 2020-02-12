-module(swagger_organisation_quota).

-export([encode/1]).

-export_type([swagger_organisation_quota/0]).

-type swagger_organisation_quota() ::
    #{ 'quota' := integer()
     }.

encode(#{ 'quota' := Quota
        }) ->
    #{ 'quota' => Quota
     }.
