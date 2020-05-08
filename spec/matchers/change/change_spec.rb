require 'contador'

describe "Matcher change", :change do
  it { expect{Contador.incrementar}.to change {Contador.qtd}.by(1) }
  it { expect{Contador.incrementar}.to change {Contador.qtd}.from(1).to(2) }
end
