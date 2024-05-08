# only two object are consider false in ruby
#  1 false, 2 nil

RSpec.describe 'be matcher' do

  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect({}).to be_truthy
    expect([]).to be_truthy
    expect('hello').to be_truthy
    expect(3.0).to be_truthy
    expect(36).to be_truthy
    expect(36).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
    expect(nil).to be(nil)
  end

  it 'can test for nill' do
    expect(nil).to be_nil

    my_hash = { :a => 2 }
    expect(my_hash[:b]).to be_nil
    expect(my_hash[:b]).to be(nil)
  end

end
