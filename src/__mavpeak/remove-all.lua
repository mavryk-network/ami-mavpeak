local service_manager = require"__mvrk.service-manager"
local services = require"__mavpeak.services"

service_manager.remove_services(services.cleanup_names)

log_success("mavpeak services successfully removed")