-module(aicrowd_evaluations_login).

-export([encode/1]).

-export_type([aicrowd_evaluations_login/0]).

-type aicrowd_evaluations_login() ::
    #{ 'email' := binary(),
       'password' := binary()
     }.

encode(#{ 'email' := Email,
          'password' := Password
        }) ->
    #{ 'email' => Email,
       'password' => Password
     }.
