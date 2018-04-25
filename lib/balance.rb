class Balance
  attr_accessor :holdings
  def initialize
    @holdings = 0
  end

  def credit(amount)
    @holdings += amount
  end

  def debit(amount)
    if amount > @holdings
      insufficient_funds
    else
      @holdings -= amount
    end
  end

  private

  def insufficient_funds
    puts 'Insufficient funds, you will not be able to make a withdrawal.'
    raise StandardError
  end
end
