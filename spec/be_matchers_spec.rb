# falsy values --- false, nil
# truthy values --- everything else

RSpec.describe 'be matchers' do
  it 'can tests fro truthiness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end


  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = {}
    expect(my_hash[:b]).to be_nil  
  end

  it 'test' do
    expect({}).to be_empty
    expect([10, 20, 30]).to all(be_even)
    expect([0, 1, 2]).to all(be >= 0)
  end
end


