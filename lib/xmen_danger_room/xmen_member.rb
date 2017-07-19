module XmenDangerRoom
  class XmenMember
    attr_reader :name

    def initialize(name:)
      @name = name
    end

    def wolverine?
      name.eql? 'Wolverine'
    end
  end
end
