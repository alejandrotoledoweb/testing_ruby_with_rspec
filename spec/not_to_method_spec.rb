RSpec.describe 'not_to_method' do
  it 'check that two valies do not match' do

    expect(5).not_to eq(3)
    expect('Hello').not_to eq('hello')
    expect([1, 2]).not_to eq([1, 2, 3])
  end
end
