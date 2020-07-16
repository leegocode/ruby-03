class Nono
  # alias :dog  :cat
  def cat
    puts "meow"
  end

  alias :dog  :cat
end

yes = Nono.new
yes.dog


class Teacher < Nono
  def teach
    puts "teach"
  end

  alias_method :taught ,  :teach
end

Old = Teacher.new
