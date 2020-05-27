RSpec.describe 'not_to method' do
  it 'check that two values do not match' do
    expect(5).not_to eq(10)
    expect('Jello').not_to eq('hello')
    expect([1, 2]).not_to eq([2, 1])
  end
end