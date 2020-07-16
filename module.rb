module Eat
  def much
    puts "you eat a lot"
  end

  def little
    puts "you eat too less"
  end

end


class Cat
  include Eat
end


kitty = Cat.new
kitty.little
