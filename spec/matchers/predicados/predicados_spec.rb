describe 'Predicados' do
  it 'odd' do
    expect(1).to be_odd
  end

  it 'even' do
    expect(2).to be_even
  end

  it 'empty array' do
    expect([]).to be_empty
  end

  it 'array' do
    expect([1]).to be_any
  end
end
