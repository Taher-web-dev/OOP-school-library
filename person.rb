require './corrector'
require './all_persons'
class Person
  @@no_of_person = 0
  attr_reader :id, :rentals
  attr_accessor :name, :age

  ALL_PERSONS = AllPersons.new
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = @@no_of_person
    @age = age
    @parent_permission = parent_permission
    @name = name
    @@no_of_person += 1
    @corrector = Corrector.new
    @rentals = []
    ALL_PERSONS.all_persons << self
  end

  def is_of_age?
    @age >= 18
  end

  private :is_of_age?

  def can_use_services?
    return true if is_of_age? || @parent_permission
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  def add_rental(rental)
    @rentals << rental
    rental.person = self
  end

end
