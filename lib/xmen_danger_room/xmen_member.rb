module XmenDangerRoom
  class XmenMember
    attr_reader :name, :age, :email

    def initialize(name:, age:, email:)
      @name = name
      @age = age
      @email = email
    end

    def wolverine?
      name.eql? 'Wolverine'
    end

    def old_enough_to_fight?
      age >= 18
    end

    def valid_email?
      email.match? /^\S+@xmen.com$/
    end
  end
end
