RSpec.describe MuscleBio do

  it "runs Muscle" do
  	run = MuscleBio.run('-version')
  	expect(run).to match /muscle\s5\.1/i
  end

  it "run gets output, using :PPP" do
  	file_in = File.expand_path('../sample/sample_seq.fasta', File.dirname(__FILE__))
  	file_out = File.expand_path('../sample/sample_seq.afa', File.dirname(__FILE__))
  	File.delete(file_out) if File.exist?(file_out)
  	run = MuscleBio.exec(file_in, file_out, :PPP)
  	expect( File.file?(file_out) ).to eq true
  end

  it "run gets output, using :Super5" do
    file_in = File.expand_path('../sample/sample_seq.fasta', File.dirname(__FILE__))
    file_out = File.expand_path('../sample/sample_seq.afa', File.dirname(__FILE__))
    File.delete(file_out) if File.exist?(file_out)
    run = MuscleBio.exec(file_in, file_out, :Super5)
    expect( File.file?(file_out) ).to eq true
  end

end
