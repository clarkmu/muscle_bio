require "muscle_bio/version"

module MuscleBio

  def self.run(cmd)
    case RUBY_PLATFORM
    when /arm64/
      file = "muscle5.1.macos_arm64"
    when /x86.*darwin/
      file = "muscle5.1.macos_intel64"
    when /cygwin|mswin|mingw|bccwin|wince|emx/
      file = "muscle5.1.win64.exe"
    else
      file = "muscle5.1.linux_intel64"
    end

  	file = File.join( File.dirname(__FILE__), 'runnable/'+file)
  	cmd = file + "\s" + cmd + " -quiet"
	  `#{cmd}`
  end

  ### two algorithms to choose, :PPP or Super5
  def self.exec(fileIn, fileOut, algorithm = :PPP)
    if algorithm == :PPP
      cmd = "-align " + fileIn + " -output " + fileOut
    elsif algorithm == :Super5
      cmd = "-super5 " + fileIn + " -output " + fileOut
    else
      raise "algorithm not found. Muscle aborted."
    end
  	self.run(cmd)
  end

end
