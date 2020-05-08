require 'pessoa'

describe 'Atributos' do
  # before(:each) { @pessoa = Pessoa.new }
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Thiago'
    pessoa.idade = 20

    expect(pessoa).to have_attributes(nome: 'Thiago', idade: 20)

    expect(pessoa).to have_attributes(nome: a_string_starting_with('T'), idade: (a_value >= 20))
  end
end