RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]), 'Array', type: :collection  do
  it '#include' do
    expect(subject).to include(1,2)
    # Funciona só para elementos do Array
  end

  it { is_expected.to exclude(4) }

  it '#contain_exactly', :slow do
    expect(subject).to contain_exactly(2,3,1)
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3])
  end
end
