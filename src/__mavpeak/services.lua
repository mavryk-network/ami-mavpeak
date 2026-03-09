local app_id = am.app.get("id")
local mavpeak_service_id = app_id .. "-mavpeak"

local user = am.app.get("user", "root")
ami_assert(type(user) == "string", "User not specified...", EXIT_INVALID_CONFIGURATION)

local possible_residues = { }

local active_services = {
	[mavpeak_service_id] = am.app.get_configuration("MAVPEAK_SERVICE_FILE", "__mavpeak/assets/mavpeak")
}

local active_names = {}
for k, _ in pairs(active_services) do
        active_names[k:sub((#app_id + 2))] = k
end

--- cleanup names include everything including residues
---@type string[]
local cleanup_names = {}
cleanup_names = util.merge_arrays(cleanup_names, table.values(active_names))
cleanup_names = util.merge_arrays(cleanup_names, table.values(possible_residues))

return {
	mavpeak_service_id = mavpeak_service_id,
	active = active_services,
	active_names = active_names,
	all_names = all_names,
	cleanup_names = cleanup_names
}