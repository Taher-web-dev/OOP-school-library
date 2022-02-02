require './rental'
describe Rental do
  it 'Create new rental with book, person and date' do
    person = Person.new(15)
    book = Person.new('management', 'Michael')
    date = '2020/12/12'
    rental = Rental.new(date, person, book)
    expect(rental).to have_attributes(date: date)
    expect(rental).to have_attributes(person: person)
    expect(rental).to have_attributes(book: book)
  end
end