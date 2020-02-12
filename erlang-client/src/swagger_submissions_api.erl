-module(swagger_submissions_api).

-export([delete_submission_dao/2, delete_submission_dao/3,
         get_submission_dao/2, get_submission_dao/3,
         get_submission_list_dao/1, get_submission_list_dao/2,
         post_submission_list_dao/2, post_submission_list_dao/3]).

-define(BASE_URL, "/v1").

%% @doc 
%% Stop evaluation of a submission
-spec delete_submission_dao(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_submission_dao(Ctx, SubmissionId) ->
    delete_submission_dao(Ctx, SubmissionId, #{}).

-spec delete_submission_dao(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_submission_dao(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/submissions/", SubmissionId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get details of a submission
-spec get_submission_dao(ctx:ctx(), integer()) -> {ok, swagger_submissions:swagger_submissions(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_submission_dao(Ctx, SubmissionId) ->
    get_submission_dao(Ctx, SubmissionId, #{}).

-spec get_submission_dao(ctx:ctx(), integer(), maps:map()) -> {ok, swagger_submissions:swagger_submissions(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_submission_dao(Ctx, SubmissionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/", SubmissionId, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all submissions
-spec get_submission_list_dao(ctx:ctx()) -> {ok, [swagger_submissions:swagger_submissions()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_submission_list_dao(Ctx) ->
    get_submission_list_dao(Ctx, #{}).

-spec get_submission_list_dao(ctx:ctx(), maps:map()) -> {ok, [swagger_submissions:swagger_submissions()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_submission_list_dao(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/submissions/"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Make a new submission
-spec post_submission_list_dao(ctx:ctx(), swagger_submissions:swagger_submissions()) -> {ok, swagger_submissions:swagger_submissions(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_submission_list_dao(Ctx, Payload) ->
    post_submission_list_dao(Ctx, Payload, #{}).

-spec post_submission_list_dao(ctx:ctx(), swagger_submissions:swagger_submissions(), maps:map()) -> {ok, swagger_submissions:swagger_submissions(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_submission_list_dao(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/submissions/"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


