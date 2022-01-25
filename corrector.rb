class Corrector
  def correct_name(name)
    correct_name = name[0].capitalize << name[1..name.length]
    correct_name[0...10]
  end
end
