require './classroom'
describe Classroom do
  it 'Create a new classroom with label' do
    classroom = Classroom.new('lab')
    expect(classroom).to have_attributes(label: 'lab')
  end
end
