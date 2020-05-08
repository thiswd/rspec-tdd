describe "Matcher output" do
  it { expect{ puts 'Thiago' }.to output.to_stdout }
  it { expect{ print 'Thiago' }.to output('Thiago').to_stdout }
  it { expect{ puts 'Thiago Sawada' }.to output(/Thiago/).to_stdout }

  it { expect{ warn 'Thiago' }.to output.to_stderr }
  it { expect{ warn 'Thiago' }.to output("Thiago\n").to_stderr }
  it { expect{ warn 'Thiago Sawada' }.to output(/Thiago/).to_stderr }
end