require "muscle_bio/version"

module MuscleBio

  def self.run(cmd)
  	file = (/darwin/ =~ RUBY_PLATFORM) != nil ? "muscle_mac_64" :
  		(/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil ? "muscle_windows_32.exe" : "muscle_linux_64"
  	file = File.join( File.dirname(__FILE__), 'runnable/'+file)
  	cmd = cmd.sub 'sudo ', ''
  	cmd = cmd.sub 'muscle', file
  	cmd = 'sudo ' + cmd
	`#{cmd}`
  end

end