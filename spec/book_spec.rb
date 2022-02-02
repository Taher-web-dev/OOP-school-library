require './book'
describe Book.new 'management','Michael' do
  it { is_expected.to have_attributes(title: 'management')}
  it { is_expected.to have_attributes(author: 'Michael')}
end