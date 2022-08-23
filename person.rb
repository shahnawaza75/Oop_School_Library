class Person
    attr_accessor :name, :age
    attr_reader :id
  
    def initialize(age, name = 'Unknown', _parent_permission: true)
      @id = Random.rand(1..1000)
      @name = name
      @age = age
    end
  
    private
  
    def of_age?
      @age >= 18
    end
  
    public
  
    def can_use_services?
      return true if is_of_age?
    end
  end