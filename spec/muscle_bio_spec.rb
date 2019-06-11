RSpec.describe MuscleBio do

  it "runs Muscle" do
  	run = MuscleBio.run('muscle -version')
  	expect(run).to eq "MUSCLE v3.8.31 by Robert C. Edgar\n"
  end

  it "run gets output" do
  	file_in = File.expand_path('../sample/sample_seq.fasta', File.dirname(__FILE__))
  	file_out = File.expand_path('../sample/sample_seq.afa', File.dirname(__FILE__))
  	File.delete(file_out) if File.exist?(file_out)
  	run = MuscleBio.run("muscle -in #{file_in} -out #{file_out}")
  	expect( File.file?(file_out) ).to eq true
  end

  it "init gets output" do
  	file_in = File.expand_path('../sample/sample_seq.fasta', File.dirname(__FILE__))
  	file_out = File.expand_path('../sample/sample_seq.afa', File.dirname(__FILE__))
  	File.delete(file_out) if File.exist?(file_out)
  	run = MuscleBio.init(file_in,file_out)
  	expect( File.file?(file_out) ).to eq true
  end

end