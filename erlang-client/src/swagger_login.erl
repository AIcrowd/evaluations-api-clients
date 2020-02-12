-module(swagger_login).

-export([encode/1]).

-export_type([swagger_login/0]).

-type swagger_login() ::
    #{ 'email' := binary(),
       'password' := binary()
     }.

encode(#{ 'email' := Email,
          'password' := Password
        }) ->
    #{ 'email' => Email,
       'password' => Password
     }.
