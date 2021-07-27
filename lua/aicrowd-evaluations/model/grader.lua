--[[
  AIcrowd Evaluations API
 
  API to create and evaluate custom challenges on AIcrowd!
 
  OpenAPI spec version: 1.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- grader class
local grader = {}
local grader_mt = {
	__name = "grader";
	__index = grader;
}

local function cast_grader(t)
	return setmetatable(t, grader_mt)
end

local function new_grader(id, created, updated, archived, dataset, cluster_id, description, workflow_spec, evaluator_repo, evaluator_repo_tag, name, notifications, logs, meta, status, secrets, wf_name, allowed_extensions, workflow_priority, config_path, user_id, organisation_id)
	return cast_grader({
		["id"] = id;
		["created"] = created;
		["updated"] = updated;
		["archived"] = archived;
		["dataset"] = dataset;
		["cluster_id"] = cluster_id;
		["description"] = description;
		["workflow_spec"] = workflow_spec;
		["evaluator_repo"] = evaluator_repo;
		["evaluator_repo_tag"] = evaluator_repo_tag;
		["name"] = name;
		["notifications"] = notifications;
		["logs"] = logs;
		["meta"] = meta;
		["status"] = status;
		["secrets"] = secrets;
		["wf_name"] = wf_name;
		["allowed_extensions"] = allowed_extensions;
		["workflow_priority"] = workflow_priority;
		["config_path"] = config_path;
		["user_id"] = user_id;
		["organisation_id"] = organisation_id;
	})
end

return {
	cast = cast_grader;
	new = new_grader;
}
