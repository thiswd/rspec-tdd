require 'pessoa'

describe 'Atributos' do
  # before(:each) { @pessoa = Pessoa.new }
  # after(:each) do
  #   @pessoa.nome = "Sem nome!"
  #   puts @pessoa.inspect
  # end

  around(:each) do |test|
    @pessoa = Pessoa.new
    test.run
    @pessoa.nome = "Sem nome!"
    puts @pessoa.inspect
  end

  it 'have_attributes' do
    @pessoa.nome = 'Thiago'
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: 'Thiago', idade: 20)

    expect(@pessoa).to have_attributes(nome: a_string_starting_with('T'), idade: (a_value >= 20))
  end
end

# start_with = starting_with = a_string_starting_with
# be = a_value
