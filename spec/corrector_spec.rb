require './corrector'
describe Corrector do
  it 'Add capitalized first lettre using correct_name method' do
    corrector = Corrector.new
    expect(corrector.correct_name('taher')).to eql('Taher')
  end
  it 'Return only the first ten lettres using correct_name method' do
    corrector = Corrector.new
    expect(corrector.correct_name('aabbccddeeffggghayy').length).to be<=10
  end
end
