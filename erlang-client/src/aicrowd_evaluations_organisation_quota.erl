-module(aicrowd_evaluations_organisation_quota).

-export([encode/1]).

-export_type([aicrowd_evaluations_organisation_quota/0]).

-type aicrowd_evaluations_organisation_quota() ::
    #{ 'quota' := integer()
     }.

encode(#{ 'quota' := Quota
        }) ->
    #{ 'quota' => Quota
     }.
