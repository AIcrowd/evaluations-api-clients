-module(aicrowd_evaluations_grader_meta).

-export([encode/1]).

-export_type([aicrowd_evaluations_grader_meta/0]).

-type aicrowd_evaluations_grader_meta() ::
    #{ 'dataset' => maps:map(),
       'notifications' => maps:map(),
       'name' => binary(),
       'description' => binary(),
       'cluster_id' => integer(),
       'meta' => binary()
     }.

encode(#{ 'dataset' := Dataset,
          'notifications' := Notifications,
          'name' := Name,
          'description' := Description,
          'cluster_id' := ClusterId,
          'meta' := Meta
        }) ->
    #{ 'dataset' => Dataset,
       'notifications' => Notifications,
       'name' => Name,
       'description' => Description,
       'cluster_id' => ClusterId,
       'meta' => Meta
     }.
