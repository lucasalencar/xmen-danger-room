module XmenDangerRoom
  class XmenMember
    attr_reader :name, :age

    def initialize(name:, age:)
      @name = name
      @age = age
    end

    def wolverine?
      name.eql? 'Wolverine'
    end

    def old_enough_to_fight?
      age >= 18
    end
  end
end
