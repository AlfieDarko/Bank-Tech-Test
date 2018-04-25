class Balance
  attr_accessor :holdings
  def initialize
    @holdings = 0
  end

  def credit(amount)
    @holdings += amount
  end

  def debit(amount)
    @holdings -= amount
  end
end
