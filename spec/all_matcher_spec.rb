RSpec.describe "all matcher" do
  it 'allow for aggregate check' do
    # [7, 9, 11].each do |val|
    #   expect(val).to be_odd
    # end

    expect([7, 9, 11, 13]).to all(be_odd)
    expect([7, 9, 11, 13]).to all(be > 5)
  end

  describe [5, 7 ,9] do
    it { is_expected.to all(be_odd)}
    it { is_expected.to all(be >= 5)}
  end

end
