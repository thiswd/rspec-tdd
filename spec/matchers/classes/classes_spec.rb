require 'string_nao_vazia'

describe 'Classes' do

  it 'be_instance_of' do
    expect("Thiago").to be_instance_of(String) # Exatamente a classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String) # Pode ser por herança
    expect(str).to be_kind_of(StringNaoVazia)
  end

  it 'be_a / be_an' do
    str = StringNaoVazia.new
    expect(str).to be_a(String)
    expect(str).to be_an(StringNaoVazia)
    # O mesmo que be_kind_of
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size) # Verifica se reponde a um determinado método
  end
end
