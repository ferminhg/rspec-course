RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion ' do
      expect(subject).to include('hot')
      expect(subject).to include('cho')
      expect(subject).to include('late')
    end
  
    it { is_expected.to include('cho')}
  end

  describe [10, 20 , 30] do
    it 'check for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(20, 30)
    end

    it { is_expected.to include(10)} 
  end

  describe ({a: 2, b: 4}) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 2)
    end

    it {is_expected.to include(a:2)}
  end
end