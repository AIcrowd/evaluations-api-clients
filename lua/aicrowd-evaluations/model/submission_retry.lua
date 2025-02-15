--[[
  AIcrowd Evaluations API
 
  API to create and evaluate custom challenges on AIcrowd!
 
  OpenAPI spec version: 1.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- submission_retry class
local submission_retry = {}
local submission_retry_mt = {
	__name = "submission_retry";
	__index = submission_retry;
}

local function cast_submission_retry(t)
	return setmetatable(t, submission_retry_mt)
end

local function new_submission_retry(queued, failed)
	return cast_submission_retry({
		["queued"] = queued;
		["failed"] = failed;
	})
end

return {
	cast = cast_submission_retry;
	new = new_submission_retry;
}
