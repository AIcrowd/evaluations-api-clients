-module(aicrowd_evaluations_users_api).

-export([create_user/2, create_user/3,
         delete_user/2, delete_user/3,
         get_user/2, get_user/3,
         list_users/1, list_users/2,
         update_user/3, update_user/4,
         update_user_quota/3, update_user_quota/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Create a new user
-spec create_user(ctx:ctx(), aicrowd_evaluations_user:aicrowd_evaluations_user()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_user(Ctx, Payload) ->
    create_user(Ctx, Payload, #{}).

-spec create_user(ctx:ctx(), aicrowd_evaluations_user:aicrowd_evaluations_user(), maps:map()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_user(Ctx, Payload, Optional) ->
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
%% Delete a user
-spec delete_user(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_user(Ctx, UserId) ->
    delete_user(Ctx, UserId, #{}).

-spec delete_user(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_user(Ctx, UserId, Optional) ->
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
-spec get_user(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_user(Ctx, UserId) ->
    get_user(Ctx, UserId, #{}).

-spec get_user(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_user(Ctx, UserId, Optional) ->
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
-spec list_users(ctx:ctx()) -> {ok, [aicrowd_evaluations_user:aicrowd_evaluations_user()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_users(Ctx) ->
    list_users(Ctx, #{}).

-spec list_users(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_user:aicrowd_evaluations_user()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_users(Ctx, Optional) ->
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
%% Update a user
-spec update_user(ctx:ctx(), integer(), aicrowd_evaluations_user:aicrowd_evaluations_user()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_user(Ctx, UserId, Payload) ->
    update_user(Ctx, UserId, Payload, #{}).

-spec update_user(ctx:ctx(), integer(), aicrowd_evaluations_user:aicrowd_evaluations_user(), maps:map()) -> {ok, aicrowd_evaluations_user:aicrowd_evaluations_user(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_user(Ctx, UserId, Payload, Optional) ->
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

%% @doc 
%% Add or subtract quota for a user
-spec update_user_quota(ctx:ctx(), integer(), aicrowd_evaluations_user_quota:aicrowd_evaluations_user_quota()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_user_quota(Ctx, UserId, Payload) ->
    update_user_quota(Ctx, UserId, Payload, #{}).

-spec update_user_quota(ctx:ctx(), integer(), aicrowd_evaluations_user_quota:aicrowd_evaluations_user_quota(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_user_quota(Ctx, UserId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/users/", UserId, "/addquota"],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


