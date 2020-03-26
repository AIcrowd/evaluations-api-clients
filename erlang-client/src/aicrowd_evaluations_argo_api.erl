-module(aicrowd_evaluations_argo_api).

-export([post_generic_feedback_contract/4, post_generic_feedback_contract/5,
         post_grader_feedback_dao/3, post_grader_feedback_dao/4,
         post_submission_feedback_dao/3, post_submission_feedback_dao/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Update the status of an object
-spec post_generic_feedback_contract(ctx:ctx(), binary(), integer(), aicrowd_evaluations_generic_feedback:aicrowd_evaluations_generic_feedback()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_generic_feedback_contract(Ctx, ModelName, ObjectId, Payload) ->
    post_generic_feedback_contract(Ctx, ModelName, ObjectId, Payload, #{}).

-spec post_generic_feedback_contract(ctx:ctx(), binary(), integer(), aicrowd_evaluations_generic_feedback:aicrowd_evaluations_generic_feedback(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_generic_feedback_contract(Ctx, ModelName, ObjectId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/argo/", ModelName, "/", ObjectId, ""],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update the grader details
-spec post_grader_feedback_dao(ctx:ctx(), integer(), aicrowd_evaluations_grader_feedback:aicrowd_evaluations_grader_feedback()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_grader_feedback_dao(Ctx, GraderId, Payload) ->
    post_grader_feedback_dao(Ctx, GraderId, Payload, #{}).

-spec post_grader_feedback_dao(ctx:ctx(), integer(), aicrowd_evaluations_grader_feedback:aicrowd_evaluations_grader_feedback(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_grader_feedback_dao(Ctx, GraderId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/argo/graders/", GraderId, ""],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update the submission details
-spec post_submission_feedback_dao(ctx:ctx(), integer(), aicrowd_evaluations_submission_feedback:aicrowd_evaluations_submission_feedback()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_submission_feedback_dao(Ctx, SubmissionId, Payload) ->
    post_submission_feedback_dao(Ctx, SubmissionId, Payload, #{}).

-spec post_submission_feedback_dao(ctx:ctx(), integer(), aicrowd_evaluations_submission_feedback:aicrowd_evaluations_submission_feedback(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
post_submission_feedback_dao(Ctx, SubmissionId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/argo/submissions/", SubmissionId, ""],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


