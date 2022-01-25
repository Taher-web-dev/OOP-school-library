class Corrector
  def correct_name (name)
    correct_name = name[0].capitalize << name[1..]
    correct_name[...10]
  end
end
