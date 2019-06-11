require "muscle_bio/version"

module MuscleBio
  def self.run(cmd)

  	file = ""

  	if (/darwin/ =~ RUBY_PLATFORM) != nil 
  		file = "muscle_mac_64"
  	elsif (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
  		file = "muscle_windows_32.exe"
  	else
  		file = "muscle_linux_64"
  	end

  	file = File.join( File.dirname(__FILE__), 'runnable/'+file)

  	cmd = cmd.sub 'sudo ', ''
  	cmd = cmd.sub 'muscle', file
  	# cmd = 'sudo ' + cmd

  	# puts cmd

	`#{cmd}`
  end
end