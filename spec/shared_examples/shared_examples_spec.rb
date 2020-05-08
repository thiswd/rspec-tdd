require 'pessoa'

shared_examples :status do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
  end
end

describe "Pessoa" do
  subject(:pessoa) { Pessoa.new }

  # it_behaves_like, include_examples, it_should_behave_like
  it_behaves_like :status, :feliz
  it_should_behave_like :status, :triste
end
