-module(swagger_generic_feedback).

-export([encode/1]).

-export_type([swagger_generic_feedback/0]).

-type swagger_generic_feedback() ::
    #{ 'status' := boolean(),
       'meta' => maps:map()
     }.

encode(#{ 'status' := Status,
          'meta' := Meta
        }) ->
    #{ 'status' => Status,
       'meta' => Meta
     }.
