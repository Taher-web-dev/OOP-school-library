require 'json'
def create_person(option)
  age = 0
  loop do
    print('Age: ')
    age = gets.chomp.to_i
    break if age.positive?
  end
  print 'Name: '
  name = gets.chomp
  new_content = nil
  case option
  when 1
    permission = ''
    loop do
      print 'Has parent permission? [Y/N]: '
      permission = gets.chomp
      break if %w[y n].include? permission.downcase
    end
    permission.downcase == 'y' ? Student.new(age, nil, name, true) : Student.new(age, nil, name, false)
    new_content = {class: 'Student', age: age, name:name, perm: permission=='y' ? true : false }
  else
    print 'Specialization: '
    specialization = gets.chomp
    Teacher.new(age, specialization, name)
    new_content = {class: 'Teacher', age: age, specialization: specialization, name: name}
  end
  if File.exist?('./persons.json')
    content = JSON.parse(File.read('./persons.json'))
    content.push(new_content)
    File.write('./persons.json',JSON.generate(content))
  else
    File.write('./persons.json',JSON.generate([new_content]))
  end
  puts 'Person created successfully'
  sleep 2
end

def create_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  Book.new(title, author)
  puts 'Book created successfully'
  sleep 2
end

def create_rental
  all_books = Book::ALL_BOOKS.all_books
  nbr_books = all_books.count
  all_person = Person::ALL_PERSONS.all_persons
  nbr_persons = all_person.size
  book = -1
  person = -1
  loop do
    puts 'Select a book from the following list by number'
    all_books.each_with_index do |bk, s|
      puts "#{s}) Title: #{bk.title}, Author: #{bk.author}"
    end
    book = gets.chomp.to_i
    break if (0...nbr_books).include? book
  end
  loop do
    puts 'Select a person from the following list by number (not id)'
    all_person.each_with_index do |per, s|
      puts "#{s}) [#{per.class.name}] Name: #{per.name}, ID: #{per.id}, Age: #{per.age}"
    end
    person = gets.chomp.to_i
    break if (0...nbr_persons).include? person
  end
  date = ''
  loop do
    print 'Date: '
    date = gets.chomp
    break if date.match(%r{\d{2,4}/\d{1,2}/\d{1,2}$})
  end
  Rental.new(date, all_person[person], all_books[book])
  puts 'Rental created successfully'
  sleep 2
end

def list_rentals
  print 'ID of person: '
  id = gets.chomp.to_i
  all_person = Person::ALL_PERSONS.all_persons
  selected_person = all_person.find { |person| person.id == id }
  all_rentals = selected_person.rentals
  all_rentals.each do |rental|
    puts "Date: #{rental.date}, Book #{rental.book.title} by #{rental.book.author}"
  end
  sleep 2
end
