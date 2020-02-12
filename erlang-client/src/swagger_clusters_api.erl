-module(swagger_clusters_api).

-export([delete_cluster_dao/2, delete_cluster_dao/3,
         get_cluster_dao/2, get_cluster_dao/3,
         get_grader_list_dao/1, get_grader_list_dao/2,
         post_grader_list_dao/2, post_grader_list_dao/3]).

-define(BASE_URL, "/v1").

%% @doc 
%% Delete a cluster
-spec delete_cluster_dao(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_cluster_dao(Ctx, ClusterId) ->
    delete_cluster_dao(Ctx, ClusterId, #{}).

-spec delete_cluster_dao(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_cluster_dao(Ctx, ClusterId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/clusters/", ClusterId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get information of a cluster
-spec get_cluster_dao(ctx:ctx(), integer()) -> {ok, swagger_cluster:swagger_cluster(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_cluster_dao(Ctx, ClusterId) ->
    get_cluster_dao(Ctx, ClusterId, #{}).

-spec get_cluster_dao(ctx:ctx(), integer(), maps:map()) -> {ok, swagger_cluster:swagger_cluster(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_cluster_dao(Ctx, ClusterId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/clusters/", ClusterId, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all clusters
-spec get_grader_list_dao(ctx:ctx()) -> {ok, [swagger_cluster:swagger_cluster()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_grader_list_dao(Ctx) ->
    get_grader_list_dao(Ctx, #{}).

-spec get_grader_list_dao(ctx:ctx(), maps:map()) -> {ok, [swagger_cluster:swagger_cluster()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_grader_list_dao(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/clusters/"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Add a new cluster
-spec post_grader_list_dao(ctx:ctx(), swagger_cluster:swagger_cluster()) -> {ok, swagger_cluster:swagger_cluster(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_grader_list_dao(Ctx, Payload) ->
    post_grader_list_dao(Ctx, Payload, #{}).

-spec post_grader_list_dao(ctx:ctx(), swagger_cluster:swagger_cluster(), maps:map()) -> {ok, swagger_cluster:swagger_cluster(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_grader_list_dao(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/clusters/"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


