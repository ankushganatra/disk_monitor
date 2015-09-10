require_relative "os_adapter"
class LinuxAdapter < OsAdapter
	def self.disk_usage
		data = `df -h`.split("\n").map{|s| s.split(" ")}
		keys = data.shift
		array_of_hashs = data.map do |ary|
		  keys.zip(ary).to_h
		end
	end
end
