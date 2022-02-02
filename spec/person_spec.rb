require './person'
describe Person do
  it 'Create a new person with age and name' do
    person = Person.new(15, 'aziz')
    expect(person).to have_attributes(age: 15)
    expect(person).to have_attributes(name: 'aziz')
  end
  it 'Can control the access to services using can_use_services? method' do
    expect(Person.new(15, 'aziz', false).can_use_services?).to be_falsey
    expect(Person.new(15, 'aziz').can_use_services?).to be_truthy
    expect(Person.new(55, 'moujahed').can_use_services?).to be_truthy
  end
end
