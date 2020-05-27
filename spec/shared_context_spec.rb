RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variables) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'Sushi'
    expect(@foods.length).to eq(1)
  end
  
  it 'can reuse instance varialbe across diffrente examples' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end

end

RSpec.describe 'second examples' do
  include_context 'common'

  it 'does something' do
    expect(some_variables.length).to eq(3)
  end
end


RSpec.describe Array do
  subject { [1, 2] }

  it 'check the value of subject' do
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2]) }
end