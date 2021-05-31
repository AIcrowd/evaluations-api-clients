-module(aicrowd_evaluations_submissions_api).

-export([create_submission/2, create_submission/3,
         delete_submission/2, delete_submission/3,
         download_submission_logs/2, download_submission_logs/3,
         get_submission/2, get_submission/3,
         get_submission_data/2, get_submission_data/3,
         get_submission_logs/2, get_submission_logs/3,
         list_submissions/1, list_submissions/2,
         retry_submissions/2, retry_submissions/3]).

-define(BASE_URL, "/v1").

%% @doc 
%% Make a new submission
-spec create_submission(ctx:ctx(), aicrowd_evaluations_submissions:aicrowd_evaluations_submissions()) -> {ok, aicrowd_evaluations_submissions:aicrowd_evaluations_submissions(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_submission(Ctx, Payload) ->
    create_submission(Ctx, Payload, #{}).

-spec create_submission(ctx:ctx(), aicrowd_evaluations_submissions:aicrowd_evaluations_submissions(), maps:map()) -> {ok, aicrowd_evaluations_submissions:aicrowd_evaluations_submissions(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_submission(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/submissions/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Stop evaluation of a submission and delete it
-spec delete_submission(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_submission(Ctx, SubmissionId) ->
    delete_submission(Ctx, SubmissionId, #{}).

-spec delete_submission(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_submission(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/submissions/", SubmissionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get the submission logs by submission ID
-spec download_submission_logs(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
download_submission_logs(Ctx, SubmissionId) ->
    download_submission_logs(Ctx, SubmissionId, #{}).

-spec download_submission_logs(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
download_submission_logs(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/", SubmissionId, "/logs/download"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get details of a submission by its ID
-spec get_submission(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_submissions:aicrowd_evaluations_submissions(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_submission(Ctx, SubmissionId) ->
    get_submission(Ctx, SubmissionId, #{}).

-spec get_submission(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_submissions:aicrowd_evaluations_submissions(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_submission(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/", SubmissionId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get the submission data by submission ID
-spec get_submission_data(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_submission_data(Ctx, SubmissionId) ->
    get_submission_data(Ctx, SubmissionId, #{}).

-spec get_submission_data(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_submission_data(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/", SubmissionId, "/data"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get submission logs from loki
-spec get_submission_logs(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_submission_logs:aicrowd_evaluations_submission_logs(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_submission_logs(Ctx, SubmissionId) ->
    get_submission_logs(Ctx, SubmissionId, #{}).

-spec get_submission_logs(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_submission_logs:aicrowd_evaluations_submission_logs(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_submission_logs(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/", SubmissionId, "/logs"],
    QS = lists:flatten([])++aicrowd_evaluations_utils:optional_params(['step', 'log_lines'], _OptionalParams),
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% List all submissions available
-spec list_submissions(ctx:ctx()) -> {ok, [aicrowd_evaluations_submissions:aicrowd_evaluations_submissions()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_submissions(Ctx) ->
    list_submissions(Ctx, #{}).

-spec list_submissions(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_submissions:aicrowd_evaluations_submissions()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_submissions(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/"],
    QS = lists:flatten([])++aicrowd_evaluations_utils:optional_params(['per_page', 'page', 'meta', 'status', 'grader_id', 'user_id'], _OptionalParams),
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Retry the submissions with given IDs
-spec retry_submissions(ctx:ctx(), aicrowd_evaluations_submission_retry_input:aicrowd_evaluations_submission_retry_input()) -> {ok, aicrowd_evaluations_submission_retry:aicrowd_evaluations_submission_retry(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
retry_submissions(Ctx, Payload) ->
    retry_submissions(Ctx, Payload, #{}).

-spec retry_submissions(ctx:ctx(), aicrowd_evaluations_submission_retry_input:aicrowd_evaluations_submission_retry_input(), maps:map()) -> {ok, aicrowd_evaluations_submission_retry:aicrowd_evaluations_submission_retry(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
retry_submissions(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/submissions/retry"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


