require_relative "../disk_monitor"
class DiskUsage < Thor
	desc "get", "Prints the disk space utilized and free percentage"
	def get
		p DiskMonitor::Usage.find
	end
end