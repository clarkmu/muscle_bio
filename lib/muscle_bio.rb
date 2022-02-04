require "muscle_bio/version"

module MuscleBio

  def self.run(cmd, useSudo = false)
  	file = (/darwin/ =~ RUBY_PLATFORM) != nil ? "muscle_mac_64" :
  		(/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil ? "muscle_windows_32.exe" : "muscle_linux_64"
  	file = File.join( File.dirname(__FILE__), 'runnable/'+file)
  	cmd = cmd.sub 'sudo ', ''
  	cmd = cmd.sub 'muscle', file
  	cmd = cmd + " -quiet"
    if useSudo
      cmd = 'sudo ' + cmd
    end
	`#{cmd}`
  end

  ### two algorithms to choose, :PPP or Super5
  def self.init(fileIn, fileOut, algorithm = :PPP)
    if algorithm == :PPP
      cmd = "muscle -align " + fileIn + " -output " + fileOut
    elsif algorithm == :Super5
      cmd = "muscle -super5 " + fileIn + " -output " + fileOut
    end
  	self.run(cmd)
  end

end
