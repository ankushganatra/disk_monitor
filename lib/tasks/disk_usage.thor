require_relative "../disk_monitor/usage"
class DiskUsage < Thor
	desc "get", "Prints the disk space utilized and free percentage"
	def get
		Usage.get
	end
end