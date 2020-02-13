-module(swagger_auth_logout).

-export([encode/1]).

-export_type([swagger_auth_logout/0]).

-type swagger_auth_logout() ::
    #{ 'message' => binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
