RSpec.describe 'star_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to start_with('Cat'.downcase)

      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat')} 
    it { is_expected.to end_with('pillar')} 
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at begining or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
    end

    it { is_expected.to start_with(:a)}
    it { is_expected.to end_with(:c, :d)}
  end
end