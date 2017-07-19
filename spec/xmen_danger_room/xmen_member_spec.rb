require 'spec_helper'

RSpec.describe XmenDangerRoom::XmenMember do
  subject(:member) { described_class.new(name: 'Wolverine') }

  it 'has a name' do
    expect(member.name).to eq 'Wolverine'
  end

  context 'when member is Wolverine' do
    subject(:member) { described_class.new(name: 'Wolverine') }

    it 'checks if member is wolverine' do
      expect(member.wolverine?).to be_truthy
    end
  end

  context 'when memeber is not Wolverine' do
    subject(:member) { described_class.new(name: 'Professor X') }

    it 'returns that member is not Wolverine' do
      expect(member.wolverine?).to be_falsy
    end
  end
end
