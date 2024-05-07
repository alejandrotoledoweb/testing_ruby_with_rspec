RSpec.describe Hash do

  #  this is what subject word you can use when use Hash in the describe
  #  this line is implicit in the test
  # let(:subject) { Hash.new }

  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.class).to eq(Hash)
    expect(subject.length).to eq(0)
    subject[:some_key] = "some value"
    expect(subject.length).to eq(1)
  end



end
