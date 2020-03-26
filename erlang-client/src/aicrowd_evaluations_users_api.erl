-module(aicrowd_evaluations_users_api).

-export([delete_user_dao/2, delete_user_dao/3,
         get_user_dao/2, get_user_dao/3,
         get_user_list_dao/1, get_user_list_dao/2,
         post_user_list_dao/2, post_user_list_dao/3,
         put_quota_dao/3, put_quota_dao/4,
         put_user_dao/3, put_user_dao/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Delete a user
-spec delete_user_dao(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_user_dao(Ctx, UserId) ->
    delete_user_dao(Ctx, UserId, #{}).

-spec delete_user_dao(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_user_dao(Ctx, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/users/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get information of a user
-spec get_user_dao(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_user_dao(Ctx, UserId) ->
    get_user_dao(Ctx, UserId, #{}).

-spec get_user_dao(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_user_dao(Ctx, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users/", UserId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all user
-spec get_user_list_dao(ctx:ctx()) -> {ok, [aicrowd_evaluations_user:aicrowd_evaluations_user()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_user_list_dao(Ctx) ->
    get_user_list_dao(Ctx, #{}).

-spec get_user_list_dao(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_user:aicrowd_evaluations_user()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_user_list_dao(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Create a new user
-spec post_user_list_dao(ctx:ctx(), aicrowd_evaluations_user:aicrowd_evaluations_user()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_user_list_dao(Ctx, Payload) ->
    post_user_list_dao(Ctx, Payload, #{}).

-spec post_user_list_dao(ctx:ctx(), aicrowd_evaluations_user:aicrowd_evaluations_user(), maps:map()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_user_list_dao(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Add or subtract quota for a user
-spec put_quota_dao(ctx:ctx(), integer(), aicrowd_evaluations_user_quota:aicrowd_evaluations_user_quota()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
put_quota_dao(Ctx, UserId, Payload) ->
    put_quota_dao(Ctx, UserId, Payload, #{}).

-spec put_quota_dao(ctx:ctx(), integer(), aicrowd_evaluations_user_quota:aicrowd_evaluations_user_quota(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
put_quota_dao(Ctx, UserId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/users/addquota/", UserId, ""],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update a user
-spec put_user_dao(ctx:ctx(), integer(), aicrowd_evaluations_user:aicrowd_evaluations_user()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
put_user_dao(Ctx, UserId, Payload) ->
    put_user_dao(Ctx, UserId, Payload, #{}).

-spec put_user_dao(ctx:ctx(), integer(), aicrowd_evaluations_user:aicrowd_evaluations_user(), maps:map()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
put_user_dao(Ctx, UserId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/users/", UserId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


