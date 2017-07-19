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

    it 'returns that cant fight when 17' do
      member = described_class.new(name: 'Rogue', age: 17)
      expect(member.old_enough_to_fight?).to be_falsy
    end
  end

  context 'when old enough to fight' do
    it 'returns that can fight with 18' do
      member = described_class.new(name: 'Rogue', age: 18)
      expect(member.old_enough_to_fight?).to be_truthy
    end

    it 'returns that can fight with 19' do
      member = described_class.new(name: 'Rogue', age: 19)
      expect(member.old_enough_to_fight?).to be_truthy
    end

    it 'returns that can fight with over 20' do
      member = described_class.new(name: 'Rogue', age: 20)
      expect(member.old_enough_to_fight?).to be_truthy
    end
  end
end
