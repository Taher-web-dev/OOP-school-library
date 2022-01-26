require './person'
class Student < Person
  def initialize(age, classroom = nil, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
    if classroom != nil
      classroom.students << self
    end
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
