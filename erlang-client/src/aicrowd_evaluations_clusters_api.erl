-module(aicrowd_evaluations_clusters_api).

-export([create_cluster/2, create_cluster/3,
         delete_cluster/2, delete_cluster/3,
         get_cluster/2, get_cluster/3,
         list_clusters/1, list_clusters/2]).

-define(BASE_URL, "/v1").

%% @doc 
%% Add a new cluster to AIcrowd and install necessary dependencies
-spec create_cluster(ctx:ctx(), aicrowd_evaluations_cluster:aicrowd_evaluations_cluster()) -> {ok, aicrowd_evaluations_cluster:aicrowd_evaluations_cluster(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_cluster(Ctx, Payload) ->
    create_cluster(Ctx, Payload, #{}).

-spec create_cluster(ctx:ctx(), aicrowd_evaluations_cluster:aicrowd_evaluations_cluster(), maps:map()) -> {ok, aicrowd_evaluations_cluster:aicrowd_evaluations_cluster(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_cluster(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/clusters/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Delete a cluster by its ID
-spec delete_cluster(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_cluster(Ctx, ClusterId) ->
    delete_cluster(Ctx, ClusterId, #{}).

-spec delete_cluster(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_cluster(Ctx, ClusterId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/clusters/", ClusterId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get details of a cluster by its ID
-spec get_cluster(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_cluster:aicrowd_evaluations_cluster(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_cluster(Ctx, ClusterId) ->
    get_cluster(Ctx, ClusterId, #{}).

-spec get_cluster(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_cluster:aicrowd_evaluations_cluster(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_cluster(Ctx, ClusterId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/clusters/", ClusterId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% List all clusters available
-spec list_clusters(ctx:ctx()) -> {ok, [aicrowd_evaluations_cluster:aicrowd_evaluations_cluster()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_clusters(Ctx) ->
    list_clusters(Ctx, #{}).

-spec list_clusters(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_cluster:aicrowd_evaluations_cluster()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_clusters(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/clusters/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


