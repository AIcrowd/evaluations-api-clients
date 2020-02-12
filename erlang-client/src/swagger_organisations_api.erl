-module(swagger_organisations_api).

-export([delete_organisation_dao/2, delete_organisation_dao/3,
         get_organisation_dao/2, get_organisation_dao/3,
         get_organisation_list_dao/1, get_organisation_list_dao/2,
         post_organisation_list_dao/2, post_organisation_list_dao/3,
         put_organisation_dao/3, put_organisation_dao/4,
         put_quota_dao/3, put_quota_dao/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Delete an Organisation
-spec delete_organisation_dao(ctx:ctx(), integer()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_organisation_dao(Ctx, OrganisationId) ->
    delete_organisation_dao(Ctx, OrganisationId, #{}).

-spec delete_organisation_dao(ctx:ctx(), integer(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_organisation_dao(Ctx, OrganisationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/organisations/", OrganisationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get information of an organisation
-spec get_organisation_dao(ctx:ctx(), integer()) -> {ok, swagger_organisation:swagger_organisation(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_organisation_dao(Ctx, OrganisationId) ->
    get_organisation_dao(Ctx, OrganisationId, #{}).

-spec get_organisation_dao(ctx:ctx(), integer(), maps:map()) -> {ok, swagger_organisation:swagger_organisation(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_organisation_dao(Ctx, OrganisationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/organisations/", OrganisationId, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all organisations
-spec get_organisation_list_dao(ctx:ctx()) -> {ok, [swagger_organisation:swagger_organisation()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_organisation_list_dao(Ctx) ->
    get_organisation_list_dao(Ctx, #{}).

-spec get_organisation_list_dao(ctx:ctx(), maps:map()) -> {ok, [swagger_organisation:swagger_organisation()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_organisation_list_dao(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/organisations/"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Create a new organisation
-spec post_organisation_list_dao(ctx:ctx(), swagger_organisation:swagger_organisation()) -> {ok, swagger_organisation:swagger_organisation(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_organisation_list_dao(Ctx, Payload) ->
    post_organisation_list_dao(Ctx, Payload, #{}).

-spec post_organisation_list_dao(ctx:ctx(), swagger_organisation:swagger_organisation(), maps:map()) -> {ok, swagger_organisation:swagger_organisation(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_organisation_list_dao(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/organisations/"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update an Organisation
-spec put_organisation_dao(ctx:ctx(), integer(), swagger_organisation:swagger_organisation()) -> {ok, swagger_organisation:swagger_organisation(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_organisation_dao(Ctx, OrganisationId, Payload) ->
    put_organisation_dao(Ctx, OrganisationId, Payload, #{}).

-spec put_organisation_dao(ctx:ctx(), integer(), swagger_organisation:swagger_organisation(), maps:map()) -> {ok, swagger_organisation:swagger_organisation(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_organisation_dao(Ctx, OrganisationId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/organisations/", OrganisationId, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Add or subtract quota for an organisation
-spec put_quota_dao(ctx:ctx(), integer(), swagger_organisation_quota:swagger_organisation_quota()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_quota_dao(Ctx, OrganisationId, Payload) ->
    put_quota_dao(Ctx, OrganisationId, Payload, #{}).

-spec put_quota_dao(ctx:ctx(), integer(), swagger_organisation_quota:swagger_organisation_quota(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_quota_dao(Ctx, OrganisationId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/organisations/addquota/", OrganisationId, ""],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


