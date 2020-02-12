package = "swagger-client"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by Swagger Codegen",
	detailed = [[
API to create and evaluate custom challenges]],
	homepage = "https://github.com/swagger-api/swagger-codegen",
	license = "Unlicense",
	maintainer = "Swagger Codegen contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["swagger-client.api.argo_api"] = "swagger-client/api/argo_api.lua";
		["swagger-client.api.auth_api"] = "swagger-client/api/auth_api.lua";
		["swagger-client.api.clusters_api"] = "swagger-client/api/clusters_api.lua";
		["swagger-client.api.graders_api"] = "swagger-client/api/graders_api.lua";
		["swagger-client.api.organisations_api"] = "swagger-client/api/organisations_api.lua";
		["swagger-client.api.submissions_api"] = "swagger-client/api/submissions_api.lua";
		["swagger-client.api.users_api"] = "swagger-client/api/users_api.lua";
		["swagger-client.model.cluster"] = "swagger-client/model/cluster.lua";
		["swagger-client.model.generic_feedback"] = "swagger-client/model/generic_feedback.lua";
		["swagger-client.model.grader"] = "swagger-client/model/grader.lua";
		["swagger-client.model.grader_feedback"] = "swagger-client/model/grader_feedback.lua";
		["swagger-client.model.login"] = "swagger-client/model/login.lua";
		["swagger-client.model.organisation"] = "swagger-client/model/organisation.lua";
		["swagger-client.model.organisation_quota"] = "swagger-client/model/organisation_quota.lua";
		["swagger-client.model.submission_feedback"] = "swagger-client/model/submission_feedback.lua";
		["swagger-client.model.submissions"] = "swagger-client/model/submissions.lua";
		["swagger-client.model.user"] = "swagger-client/model/user.lua";
		["swagger-client.model.user_quota"] = "swagger-client/model/user_quota.lua";
	}
}
