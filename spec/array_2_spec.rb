RSpec.describe Array do
  subject(:sally) do
    ["first_element", "second_element"]
  end

  it 'has a length of 2' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'is the same as the subjet' do
    expect(sally).to eq(sally)
  end
end
