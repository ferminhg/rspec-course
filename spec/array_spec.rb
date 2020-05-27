RSpec.describe Array do

  it 'initial length is 0' do
    expect(subject.length).to eq(0)
    subject.push(10)
    expect(subject.length).to eq(1)
  end

end