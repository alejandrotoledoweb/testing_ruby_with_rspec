RSpec.describe "comparison matchers" do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(10).to be < 20

    expect(10).to be >= -3
    expect(10).to be >= 10

    expect(10).to be <= 10
    expect(10).to be <= 30
  end

  describe 100 do
    it { is_expected.to be > 90}
    it { is_expected.to be >= 100}
  end
end
