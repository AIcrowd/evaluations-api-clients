-module(aicrowd_evaluations_auth_api).

-export([login/2, login/3,
         logout/1, logout/2]).

-define(BASE_URL, "/v1").

%% @doc 
%% Log in a user with email and password.
-spec login(ctx:ctx(), aicrowd_evaluations_login:aicrowd_evaluations_login()) -> {ok, aicrowd_evaluations_auth_response:aicrowd_evaluations_auth_response(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
login(Ctx, Payload) ->
    login(Ctx, Payload, #{}).

-spec login(ctx:ctx(), aicrowd_evaluations_login:aicrowd_evaluations_login(), maps:map()) -> {ok, aicrowd_evaluations_auth_response:aicrowd_evaluations_auth_response(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
login(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/login"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Invalidate the current authorization token.
-spec logout(ctx:ctx()) -> {ok, aicrowd_evaluations_auth_logout:aicrowd_evaluations_auth_logout(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
logout(Ctx) ->
    logout(Ctx, #{}).

-spec logout(ctx:ctx(), maps:map()) -> {ok, aicrowd_evaluations_auth_logout:aicrowd_evaluations_auth_logout(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
logout(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/auth/logout"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


