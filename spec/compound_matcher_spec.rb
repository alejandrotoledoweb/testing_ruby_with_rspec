RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd and be > 20}

end

RSpec.describe [:usa, :canada, :mexico] do
  it 'can test for multiple possibilites' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end

  # it { is_expected.to eq(:usa) or eq(:canada) or eq(:mexico)}

end
