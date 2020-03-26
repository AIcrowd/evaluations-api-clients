-module(aicrowd_evaluations_auth_api).

-export([post_logout_api/1, post_logout_api/2,
         post_user_login/2, post_user_login/3]).

-define(BASE_URL, "/v1").

%% @doc 
%% Logout a user
-spec post_logout_api(ctx:ctx()) -> {ok, aicrowd_evaluations_auth_logout:aicrowd_evaluations_auth_logout(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_logout_api(Ctx) ->
    post_logout_api(Ctx, #{}).

-spec post_logout_api(ctx:ctx(), maps:map()) -> {ok, aicrowd_evaluations_auth_logout:aicrowd_evaluations_auth_logout(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_logout_api(Ctx, Optional) ->
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

%% @doc 
%% User login
-spec post_user_login(ctx:ctx(), aicrowd_evaluations_login:aicrowd_evaluations_login()) -> {ok, aicrowd_evaluations_auth_response:aicrowd_evaluations_auth_response(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_user_login(Ctx, Payload) ->
    post_user_login(Ctx, Payload, #{}).

-spec post_user_login(ctx:ctx(), aicrowd_evaluations_login:aicrowd_evaluations_login(), maps:map()) -> {ok, aicrowd_evaluations_auth_response:aicrowd_evaluations_auth_response(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_user_login(Ctx, Payload, Optional) ->
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


