--[[
  AIcrowd Evaluations API
 
  API to create and evaluate custom challenges on AIcrowd!
 
  OpenAPI spec version: 1.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- login class
local login = {}
local login_mt = {
	__name = "login";
	__index = login;
}

local function cast_login(t)
	return setmetatable(t, login_mt)
end

local function new_login(email, password)
	return cast_login({
		["email"] = email;
		["password"] = password;
	})
end

return {
	cast = cast_login;
	new = new_login;
}
