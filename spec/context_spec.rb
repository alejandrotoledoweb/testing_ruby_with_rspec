RSpec.describe '#even? method' do

  # it 'should return true if number is even' do
  # end

  # it 'should return false if number is odd' do
  # end

  it 'with even number' do
    expect(4.even?).to be(true)

  end

  context 'with odd numbers' do
    it 'should return false' do
      expect(5.even?).to be(false)
    end
  end
end
