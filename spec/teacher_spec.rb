require './teacher'
describe Teacher do
  it 'Create new teacher with age' do
    teacher = Teacher.new(55, 'math')
    expect(teacher).to have_attributes(age: 55)
  end
  it 'Give access to all teacher to use services using can_use_services? method' do
    expect(Teacher.new(50, 'english').can_use_services?).to be_truthy
  end
end