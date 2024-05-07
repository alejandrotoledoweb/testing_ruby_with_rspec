RSpec.describe "equality matchers" do
  let(:a) {3.0}
  let(:b) {3}

  describe 'eq matcher' do

    it 'test for values and ignore type' do
      expect(a).to eq(b)
      expect(a).to eq(3.0)
      expect(a).to eq(3)
    end
  end

  describe 'equal and be matcher' do

    it 'test for values including same type' do
      expect(a).not_to eql(b)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(3)
    end
  end


  describe 'eql matcher' do

    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eql(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).to be(e)

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])

      #  this test is not passing because they are not identical in identity
      # 2260 and 2280 are the numbers of object location in memory
      # there could be two equal houses but those are different, in different location
      # expect(c).to equal(d)
      # expected #<Array:2260> => [1, 2, 3]
      # got #<Array:2280> => [1, 2, 3]
    end
  end
end
