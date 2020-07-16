module Mood
  alias_method :orig_exit, :exit

  def exit(code=0)
      puts "Exiting with code #{code}"

  end

end

class Odd
extend Mood
end

Odd.orig_exit(3)
