-module(aicrowd_evaluations_graders_api).

-export([archive_grader/2, archive_grader/3,
         create_grader/2, create_grader/3,
         delete_grader/2, delete_grader/3,
         download_grader_logs/2, download_grader_logs/3,
         get_grader/2, get_grader/3,
         get_grader_logs/2, get_grader_logs/3,
         list_graders/1, list_graders/2,
         unarchive_grader/2, unarchive_grader/3,
         update_grader/3, update_grader/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Archive a grader
-spec archive_grader(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
archive_grader(Ctx, GraderId) ->
    archive_grader(Ctx, GraderId, #{}).

-spec archive_grader(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
archive_grader(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/graders/", GraderId, "/archive"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

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
%% Get the grader logs by submission ID
-spec download_grader_logs(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
download_grader_logs(Ctx, GraderId) ->
    download_grader_logs(Ctx, GraderId, #{}).

-spec download_grader_logs(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
download_grader_logs(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/graders/", GraderId, "/logs/download"],
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
%% Get grader logs from loki
-spec get_grader_logs(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_grader_logs:aicrowd_evaluations_grader_logs(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_logs(Ctx, GraderId) ->
    get_grader_logs(Ctx, GraderId, #{}).

-spec get_grader_logs(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_grader_logs:aicrowd_evaluations_grader_logs(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_grader_logs(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/graders/", GraderId, "/logs"],
    QS = lists:flatten([])++aicrowd_evaluations_utils:optional_params(['step', 'log_lines'], _OptionalParams),
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
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
    QS = lists:flatten([])++aicrowd_evaluations_utils:optional_params(['per_page', 'page', 'meta', 'name', 'status', 'user_id'], _OptionalParams),
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Unarchive a grader
-spec unarchive_grader(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
unarchive_grader(Ctx, GraderId) ->
    unarchive_grader(Ctx, GraderId, #{}).

-spec unarchive_grader(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
unarchive_grader(Ctx, GraderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/graders/", GraderId, "/unarchive"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update meta details of a grader by its ID. Warning: There is no data validation.
-spec update_grader(ctx:ctx(), integer(), aicrowd_evaluations_grader_meta:aicrowd_evaluations_grader_meta()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_grader(Ctx, GraderId, Payload) ->
    update_grader(Ctx, GraderId, Payload, #{}).

-spec update_grader(ctx:ctx(), integer(), aicrowd_evaluations_grader_meta:aicrowd_evaluations_grader_meta(), maps:map()) -> {ok, aicrowd_evaluations_grader:aicrowd_evaluations_grader(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_grader(Ctx, GraderId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/graders/", GraderId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


