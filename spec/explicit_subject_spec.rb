RSpec.describe Hash do

  # let(:subject) { {} }
  subject do
    {:a => 1, "b": 2, c: 3, "d" => 4}
  end
  it 'has two key-value pairs' do
    expect(subject.length).to eq(4)
    expect(subject[:a]).to eq(1)
    expect(subject[:b]).to eq(2)
    expect(subject[:c]).to eq(3)
    expect(subject["d"]).to eq(4)
  end
end
