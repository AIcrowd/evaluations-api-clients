-module(swagger_auth_api).

-export([logout_a_user/1, logout_a_user/2,
         user_login/2, user_login/3]).

-define(BASE_URL, "/v1").

%% @doc 
%% 
-spec logout_a_user(ctx:ctx()) -> {ok, swagger_auth_logout:swagger_auth_logout(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
logout_a_user(Ctx) ->
    logout_a_user(Ctx, #{}).

-spec logout_a_user(ctx:ctx(), maps:map()) -> {ok, swagger_auth_logout:swagger_auth_logout(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
logout_a_user(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/logout"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec user_login(ctx:ctx(), swagger_login:swagger_login()) -> {ok, swagger_auth_response:swagger_auth_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_login(Ctx, Payload) ->
    user_login(Ctx, Payload, #{}).

-spec user_login(ctx:ctx(), swagger_login:swagger_login(), maps:map()) -> {ok, swagger_auth_response:swagger_auth_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
user_login(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/login"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


