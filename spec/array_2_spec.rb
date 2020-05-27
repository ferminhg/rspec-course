RSpec.describe Array do
  subject(:sally) do
    ['s', 'y']
  end

  it 'subject has length of 2' do
    expect(subject.length).to eq(2)
    subject.pop()
    expect(subject.length).to eq(1)
  end

  it 'confirm subject is initalize' do
    expect(subject).to eq(['s', 'y'])
  end
end