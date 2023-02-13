describe (1..5), 'Ranges' do
  # expect(subject) = is_expected
  it '#cover' do
    is_expected.to cover(2,5)
  end

  # One-linear syntax
  it { is_expected.to_not cover(0,6) }
end
