# Instanciar uma classe a partir do describe

describe [1,2,3,4,5] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end
