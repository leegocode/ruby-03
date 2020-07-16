class ATM
  attr_reader :balance

  def initialize(amount)
    @amount = amount
   end

  def deposit(n)
    if n > 0
    @amount+= n
    end
  end

  def balance
    @amount
  end

  def withdraw(n)
    if  n <= @amount && is_enough?(n)
      @amount -= n
    else
      @amount
    end

    return @amount
  end

    private
    def is_enough? (n)
      0 < n
    end
end
