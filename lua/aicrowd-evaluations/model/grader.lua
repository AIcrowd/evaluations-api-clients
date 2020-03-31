--[[
  Evaluations API
 
  API to create and evaluate custom challenges
 
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

local function new_grader(id, created, updated, dataset_url, cluster_id, workflow_spec, evaluator_repo, evaluator_repo_tag, storage_capacity, logs, meta, status, user_id, organisation_id)
	return cast_grader({
		["id"] = id;
		["created"] = created;
		["updated"] = updated;
		["dataset_url"] = dataset_url;
		["cluster_id"] = cluster_id;
		["workflow_spec"] = workflow_spec;
		["evaluator_repo"] = evaluator_repo;
		["evaluator_repo_tag"] = evaluator_repo_tag;
		["storage_capacity"] = storage_capacity;
		["logs"] = logs;
		["meta"] = meta;
		["status"] = status;
		["user_id"] = user_id;
		["organisation_id"] = organisation_id;
	})
end

return {
	cast = cast_grader;
	new = new_grader;
}
