--[[
  AIcrowd Evaluations API
 
  API to create and evaluate custom challenges on AIcrowd!
 
  OpenAPI spec version: 1.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- grader_meta class
local grader_meta = {}
local grader_meta_mt = {
	__name = "grader_meta";
	__index = grader_meta;
}

local function cast_grader_meta(t)
	return setmetatable(t, grader_meta_mt)
end

local function new_grader_meta(dataset, notifications, name, description, cluster_id, meta)
	return cast_grader_meta({
		["dataset"] = dataset;
		["notifications"] = notifications;
		["name"] = name;
		["description"] = description;
		["cluster_id"] = cluster_id;
		["meta"] = meta;
	})
end

return {
	cast = cast_grader_meta;
	new = new_grader_meta;
}
