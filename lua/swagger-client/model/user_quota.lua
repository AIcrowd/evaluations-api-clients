--[[
  Evaluations API
 
  API to create and evaluate custom challenges
 
  OpenAPI spec version: 1.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- user_quota class
local user_quota = {}
local user_quota_mt = {
	__name = "user_quota";
	__index = user_quota;
}

local function cast_user_quota(t)
	return setmetatable(t, user_quota_mt)
end

local function new_user_quota(quota)
	return cast_user_quota({
		["quota"] = quota;
	})
end

return {
	cast = cast_user_quota;
	new = new_user_quota;
}
