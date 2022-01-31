class AllPersons
  attr_accessor :all_persons

  def initialize
    @all_persons = []
  end

  def list_all_people
    @all_persons.each do |per|
      puts "[#{per.class.name}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}"
    end
    sleep 2
  end
end
