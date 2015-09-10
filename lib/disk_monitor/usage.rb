require 'sys/filesystem'
require 'pry'

class Usage 
	def self.get
		available_disks =  `lsblk -o NAME`.split("\n").each {|s| s.gsub!(/[^0-9A-Za-z]/, '') }.drop(1)
		available_disks.each do |disk|
			p result = (File.exists?('C:\\') ? `dir /-C` : `df -h /dev/#{disk}`).split("\n").last
		end
		
	end
end