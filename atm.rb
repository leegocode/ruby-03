class ATM
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
end
