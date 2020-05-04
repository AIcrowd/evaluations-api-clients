-module(aicrowd_evaluations_graders_api).

-export([create_grader/2, create_grader/3,
         delete_grader/2, delete_grader/3,
         get_grader/2, get_grader/3,
         get_grader_logs/2, get_grader_logs/3,
         list_graders/1, list_graders/2]).

-define(BASE_URL, "/v1").

%% @doc 
%% Create a new grader
-spec create_grader(ctx:ctx(), aicrowd_evaluations_grader:aicrowd_evaluations_grader()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_grader(Ctx, Payload) ->
    create_grader(Ctx, Payload, #{}).

-spec create_grader(ctx:ctx(), aicrowd_evaluations_grader:aicrowd_evaluations_grader(), maps:map()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_grader(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/graders/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Delete a grader by its ID
-spec delete_grader(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_grader(Ctx, GraderId) ->
    delete_grader(Ctx, GraderId, #{}).

-spec delete_grader(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_grader(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/graders/", GraderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get details of a grader by its ID
-spec get_grader(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader(Ctx, GraderId) ->
    get_grader(Ctx, GraderId, #{}).

-spec get_grader(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/graders/", GraderId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get the grader logs by submission ID
-spec get_grader_logs(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_logs(Ctx, GraderId) ->
    get_grader_logs(Ctx, GraderId, #{}).

-spec get_grader_logs(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_logs(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/graders/", GraderId, "/logs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% List all graders available
-spec list_graders(ctx:ctx()) -> {ok, [aicrowd_evaluations_grader:aicrowd_evaluations_grader()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_graders(Ctx) ->
    list_graders(Ctx, #{}).

-spec list_graders(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_grader:aicrowd_evaluations_grader()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_graders(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/graders/"],
    QS = lists:flatten([])++aicrowd_evaluations_utils:optional_params(['name', 'status', 'user_id'], _OptionalParams),
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


