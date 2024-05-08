RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')

      # this test will fail, the substring should be equal is case sensitive
      # expect(subject).to start_with('Cat')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

end
