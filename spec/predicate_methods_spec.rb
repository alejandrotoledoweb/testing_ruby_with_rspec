# puts 0.zero?
# puts 15.zero?

# puts 2.even?
# puts 5.even?

# puts 17.odd?
# puts 16.odd?

# puts [].empty?
# puts [1, 2].empty?


RSpec.describe 'predicate methods' do
  it 'can be tested with ruby methods' do
    result = 16 / 2
    expect(result.even?).to be(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
  end
end
