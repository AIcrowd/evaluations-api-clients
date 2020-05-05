package = "aicrowd-evaluations"
version = "0.0.1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by Swagger Codegen",
	detailed = [[
API to create and evaluate custom challenges on AIcrowd!]],
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
		["aicrowd-evaluations.api.auth_api"] = "aicrowd-evaluations/api/auth_api.lua";
		["aicrowd-evaluations.api.clusters_api"] = "aicrowd-evaluations/api/clusters_api.lua";
		["aicrowd-evaluations.api.graders_api"] = "aicrowd-evaluations/api/graders_api.lua";
		["aicrowd-evaluations.api.organisations_api"] = "aicrowd-evaluations/api/organisations_api.lua";
		["aicrowd-evaluations.api.submissions_api"] = "aicrowd-evaluations/api/submissions_api.lua";
		["aicrowd-evaluations.api.users_api"] = "aicrowd-evaluations/api/users_api.lua";
		["aicrowd-evaluations.model.auth_logout"] = "aicrowd-evaluations/model/auth_logout.lua";
		["aicrowd-evaluations.model.auth_response"] = "aicrowd-evaluations/model/auth_response.lua";
		["aicrowd-evaluations.model.cluster"] = "aicrowd-evaluations/model/cluster.lua";
		["aicrowd-evaluations.model.grader"] = "aicrowd-evaluations/model/grader.lua";
		["aicrowd-evaluations.model.grader_meta"] = "aicrowd-evaluations/model/grader_meta.lua";
		["aicrowd-evaluations.model.login"] = "aicrowd-evaluations/model/login.lua";
		["aicrowd-evaluations.model.organisation"] = "aicrowd-evaluations/model/organisation.lua";
		["aicrowd-evaluations.model.organisation_quota"] = "aicrowd-evaluations/model/organisation_quota.lua";
		["aicrowd-evaluations.model.submissions"] = "aicrowd-evaluations/model/submissions.lua";
		["aicrowd-evaluations.model.user"] = "aicrowd-evaluations/model/user.lua";
		["aicrowd-evaluations.model.user_quota"] = "aicrowd-evaluations/model/user_quota.lua";
	}
}
