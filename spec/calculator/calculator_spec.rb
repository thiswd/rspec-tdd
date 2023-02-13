# Descrevendo os testes da classe Calculator
require 'calculator'

describe Calculator, 'Descrição da classe' do
  # it, specify ou exemple serve para dizer que teste será feito neste momento

  # subject é a instância da classe Calculator
  # described_class é a classe Calculator
  subject(:calc) { described_class.new() }

  before(:each) do
    puts 'Antes de cada teste'
  end

  after(:example) do
    puts 'Depois de cada teste'
  end

  context '#sum' do
    # context agrupa tipos de teste
    # Usar '#' para métodos de instância e '.' pra métodos de classe
    it 'with positive numbers' do
      # calc = Calculator.new # Não tem necessidade de instanciar, basta usar subject
      # result = subject.sum(5,7)
      result = calc.sum(5,7)

      expect(result).to eq(12)
    end

    # trocar it por xit torna o teste pendente, ou seja, não é executado
    it 'with negative numbers' do
      result = calc.sum(-5,7)

      expect(result).not_to eq(1)
    end
  end

  context '#div' do
    it 'divide by 0', :aggregate_failures do
      # expect{subject.div(3,0)}.to raise_exception # raise_exception é muito genérico
      # Quando a avaliação gera um erro, é necessário colocá-la na forma de um bloco, ou seja, entre {}

      # Mostra todos os testes que falharam em vez de interromper na primeira falha
      # aggregate_failures do
        expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
        expect{subject.div(3,0)}.to raise_error('divided by 0')
        expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, 'divided by 0')
        expect{subject.div(3,0)}.to raise_error(/divided/)
      # end
    end
  end
end
