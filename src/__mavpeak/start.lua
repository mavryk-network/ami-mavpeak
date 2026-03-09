local service_manager = require"__mvrk.service-manager"
local services = require"__mavpeak.services"

service_manager.start_services(services.active_names)

log_success("mavpeak services successfully started.")