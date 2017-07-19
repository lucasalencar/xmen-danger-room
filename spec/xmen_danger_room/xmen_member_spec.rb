require 'spec_helper'

RSpec.describe XmenDangerRoom::XmenMember do
  subject(:member) do
    described_class.new(name: 'Wolverine', age: 2000)
  end

  it 'has a name' do
    expect(member.name).to eq 'Wolverine'
  end

  context 'when member is Wolverine' do
    subject(:member) do
      described_class.new(name: 'Wolverine', age: 2000)
    end

    it 'checks if member is wolverine' do
      expect(member.wolverine?).to be_truthy
    end
  end

  context 'when memeber is not Wolverine' do
    subject(:member) do
      described_class.new(name: 'Professor X', age: 60)
    end

    it 'returns that member is not Wolverine' do
      expect(member.wolverine?).to be_falsy
    end
  end

  context 'when member is under aged' do
    it 'returns that cant fight when 16' do
      member = described_class.new(name: 'Rogue', age: 16)
      expect(member.old_enough_to_fight?).to be_falsy
    end
  end
end
