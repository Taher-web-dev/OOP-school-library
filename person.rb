class Person
  @@no_of_person = 0
  attr_reader :id
  attr_accessor :name
  attr_accessor :age

  def initialize(age,name="Unknown",parent_permission=true)
    @id = @@no_of_person
    @age = age
    @parent_permission = parent_permission
    @@no_of_person += 1
  end

  def is_of_age?
    if @age >= 18
      return true
    else 
      return false
    end
  end
  private :is_of_age?
  def can_use_services?
    if is_of_age? || @parent_permission
      return true
    end
  end
end