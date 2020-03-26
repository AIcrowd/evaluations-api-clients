-module(aicrowd_evaluations_graders_api).

-export([delete_grader_dao/2, delete_grader_dao/3,
         get_grader_dao/2, get_grader_dao/3,
         get_grader_list_dao/1, get_grader_list_dao/2,
         post_grader_list_dao/2, post_grader_list_dao/3,
         put_grader_dao/3, put_grader_dao/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Delete a grader
-spec delete_grader_dao(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_grader_dao(Ctx, GraderId) ->
    delete_grader_dao(Ctx, GraderId, #{}).

-spec delete_grader_dao(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_grader_dao(Ctx, GraderId, Optional) ->
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
%% Get information of a grader
-spec get_grader_dao(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_dao(Ctx, GraderId) ->
    get_grader_dao(Ctx, GraderId, #{}).

-spec get_grader_dao(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_dao(Ctx, GraderId, Optional) ->
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
%% Get all grader
-spec get_grader_list_dao(ctx:ctx()) -> {ok, [aicrowd_evaluations_grader:aicrowd_evaluations_grader()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_list_dao(Ctx) ->
    get_grader_list_dao(Ctx, #{}).

-spec get_grader_list_dao(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_grader:aicrowd_evaluations_grader()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_list_dao(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/graders/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Create a new grader
-spec post_grader_list_dao(ctx:ctx(), aicrowd_evaluations_grader:aicrowd_evaluations_grader()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_grader_list_dao(Ctx, Payload) ->
    post_grader_list_dao(Ctx, Payload, #{}).

-spec post_grader_list_dao(ctx:ctx(), aicrowd_evaluations_grader:aicrowd_evaluations_grader(), maps:map()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_grader_list_dao(Ctx, Payload, Optional) ->
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
%% Update a grader
-spec put_grader_dao(ctx:ctx(), integer(), aicrowd_evaluations_grader:aicrowd_evaluations_grader()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
put_grader_dao(Ctx, GraderId, Payload) ->
    put_grader_dao(Ctx, GraderId, Payload, #{}).

-spec put_grader_dao(ctx:ctx(), integer(), aicrowd_evaluations_grader:aicrowd_evaluations_grader(), maps:map()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
put_grader_dao(Ctx, GraderId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/graders/", GraderId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


