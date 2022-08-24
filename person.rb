require './nameable'
class Person
  attr_accessor :name, :age
  attr_reader :id

decorate-class
    super()
  def initialize(age, name = 'Unknown', parent_permission: true)

    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if of_age? || @parent_permission

    false
  end

  private

  def correct_name
    @name
  end

  def can_use_services?
    return true if is_of_age?

  def of_age?
    @age >= 18
  end
end