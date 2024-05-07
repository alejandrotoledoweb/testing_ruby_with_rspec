RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before Context'
  end

  after(:context) do
    puts 'After Context'
  end
  before(:example) do
    puts 'Before Example'
  end
  after(:example) do
    puts 'After Example'
  end

  # the before and after context runs once with or without the context code
  # context 'this is the context' do

    it 'is just a random example' do
      puts 'test 1'
      expect(5 * 4).to be(20)
    end
    it 'is just another random example' do
      puts 'test 2'
      expect(5 * 5).to be(25)
    end
  end
# end
