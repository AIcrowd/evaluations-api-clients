-module(aicrowd_evaluations_auth_logout).

-export([encode/1]).

-export_type([aicrowd_evaluations_auth_logout/0]).

-type aicrowd_evaluations_auth_logout() ::
    #{ 'message' => binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
