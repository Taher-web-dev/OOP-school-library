require './student'
describe Student do
  it 'Create new Studen with age' do
    student = Student.new(12)
    expect(student).to have_attributes(age: 12)
  end
  it 'Can play hookey using play_hooky method' do
    expect(Student.new(12).play_hooky).to eq "¯\(ツ)/¯"
  end
end
