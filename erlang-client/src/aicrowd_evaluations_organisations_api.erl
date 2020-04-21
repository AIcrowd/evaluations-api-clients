-module(aicrowd_evaluations_organisations_api).

-export([create_organisation/2, create_organisation/3,
         delete_organisation/2, delete_organisation/3,
         get_organisation/2, get_organisation/3,
         list_organisations/1, list_organisations/2,
         update_organisation/3, update_organisation/4,
         update_organisation_quota/3, update_organisation_quota/4]).

-define(BASE_URL, "/v1").

%% @doc 
%% Create a new organisation
-spec create_organisation(ctx:ctx(), aicrowd_evaluations_organisation:aicrowd_evaluations_organisation()) -> {ok, aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_organisation(Ctx, Payload) ->
    create_organisation(Ctx, Payload, #{}).

-spec create_organisation(ctx:ctx(), aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), maps:map()) -> {ok, aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
create_organisation(Ctx, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/organisations/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Delete an Organisation
-spec delete_organisation(ctx:ctx(), integer()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_organisation(Ctx, OrganisationId) ->
    delete_organisation(Ctx, OrganisationId, #{}).

-spec delete_organisation(ctx:ctx(), integer(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
delete_organisation(Ctx, OrganisationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/organisations/", OrganisationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get details of an organisation
-spec get_organisation(ctx:ctx(), integer()) -> {ok, aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_organisation(Ctx, OrganisationId) ->
    get_organisation(Ctx, OrganisationId, #{}).

-spec get_organisation(ctx:ctx(), integer(), maps:map()) -> {ok, aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
get_organisation(Ctx, OrganisationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/organisations/", OrganisationId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% List all organisations
-spec list_organisations(ctx:ctx()) -> {ok, [aicrowd_evaluations_organisation:aicrowd_evaluations_organisation()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_organisations(Ctx) ->
    list_organisations(Ctx, #{}).

-spec list_organisations(ctx:ctx(), maps:map()) -> {ok, [aicrowd_evaluations_organisation:aicrowd_evaluations_organisation()], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
list_organisations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/organisations/"],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update an Organisation
-spec update_organisation(ctx:ctx(), integer(), aicrowd_evaluations_organisation:aicrowd_evaluations_organisation()) -> {ok, aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_organisation(Ctx, OrganisationId, Payload) ->
    update_organisation(Ctx, OrganisationId, Payload, #{}).

-spec update_organisation(ctx:ctx(), integer(), aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), maps:map()) -> {ok, aicrowd_evaluations_organisation:aicrowd_evaluations_organisation(), aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_organisation(Ctx, OrganisationId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/organisations/", OrganisationId, ""],
    QS = [],
    Headers = []++aicrowd_evaluations_utils:optional_params(['X-Fields'], _OptionalParams),
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Add or subtract quota for an organisation
-spec update_organisation_quota(ctx:ctx(), integer(), aicrowd_evaluations_organisation_quota:aicrowd_evaluations_organisation_quota()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_organisation_quota(Ctx, OrganisationId, Payload) ->
    update_organisation_quota(Ctx, OrganisationId, Payload, #{}).

-spec update_organisation_quota(ctx:ctx(), integer(), aicrowd_evaluations_organisation_quota:aicrowd_evaluations_organisation_quota(), maps:map()) -> {ok, [], aicrowd_evaluations_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), aicrowd_evaluations_utils:response_info()}.
update_organisation_quota(Ctx, OrganisationId, Payload, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/organisations/", OrganisationId, "/addquota"],
    QS = [],
    Headers = [],
    Body1 = Payload,
    ContentTypeHeader = aicrowd_evaluations_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    aicrowd_evaluations_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


