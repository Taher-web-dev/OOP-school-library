require './corrector.rb'
class Person
  @@no_of_person = 0
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = @@no_of_person
    @age = age
    @parent_permission = parent_permission
    @name = name
    @@no_of_person += 1
    corrector = Corrector.new()
  end

  def is_of_age?
    @age >= 18
  end

  private :is_of_age?

  def can_use_services?
    return true if is_of_age? || @parent_permission
  end
end
