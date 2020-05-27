class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end


RSpec.describe 'have_atrritbutes matcher' do
  describe ProfessionalWrestler.new('Stone', 'Stunner') do
    it 'check for object attribute and proper values' do
      expect(subject).to have_attributes(name: 'Stone', finishing_move: 'Stunner')
    end

    it {is_expected.to have_attributes(name: 'Stone', finishing_move: 'Stunner')}
  end
end