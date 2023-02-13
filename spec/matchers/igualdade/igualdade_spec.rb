describe 'Matchers de igualdade' do

  it '#equal string' do
    x = 'ruby'
    y = 'ruby'

    expect(x).not_to equal(y)
    # equal() / be() verifica se os objetos comparados (x e y) são os mesmos
  end

  it '#be symbol' do
    x = :ruby
    y = :ruby

    expect(x).to be(y)
  end

  it '#eql/#eq string' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
    # eql() / eq() verifica se os valores são os mesmos
  end

end
