class Classroom
  attr_accessor :label
  attr_reader :students
  def initialize
    @label = ''
    @students = []
  end
end