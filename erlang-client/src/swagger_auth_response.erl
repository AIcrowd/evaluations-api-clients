-module(swagger_auth_response).

-export([encode/1]).

-export_type([swagger_auth_response/0]).

-type swagger_auth_response() ::
    #{ 'Authorization' => binary()
     }.

encode(#{ 'Authorization' := Authorization
        }) ->
    #{ 'Authorization' => Authorization
     }.
