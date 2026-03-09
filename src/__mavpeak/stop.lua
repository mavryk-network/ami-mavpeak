local service_manager = require"__mvrk.service-manager"
local services = require"__mavpeak.services"

log_info("stopping mavpeak services... this may take few minutes.")

service_manager.stop_services(services.active_names)

log_success("mavpeak services successfully stopped.")