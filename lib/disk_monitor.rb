require "disk_monitor/version"
require_relative "adapter/linux_adapter"

module DiskMonitor
	class Usage
		def self.find
			begin
				return_val = Object.const_get("#{Gem::Platform.local.os.capitalize}Adapter").disk_usage
			rescue Exception => e
				return_val = "Missing Adapter for the current OS #{e}"
			end
			return_val
		end
		
	end 
end
