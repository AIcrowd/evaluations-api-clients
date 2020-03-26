-module(aicrowd_evaluations_auth_response).

-export([encode/1]).

-export_type([aicrowd_evaluations_auth_response/0]).

-type aicrowd_evaluations_auth_response() ::
    #{ 'Authorization' => binary()
     }.

encode(#{ 'Authorization' := Authorization
        }) ->
    #{ 'Authorization' => Authorization
     }.
