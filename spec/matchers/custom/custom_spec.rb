RSpec::Matchers.define :be_multiple_of do |expected|
	match do |actual|
		actual % expected == 0
  end

  failure_message do |actual|
    "esperado que #{actual} seja múltiplo de #{expected}"
  end

  description do |actual|
    "#{actual} é múltiplo de #{expected}"
  end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_multiple_of(3) }
end