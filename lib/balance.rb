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
      raise StandardError
    else
      @holdings -= amount
    end
  end

  private

  def insufficient_funds
    puts 'Insufficient funds, you will not be able to make a withdrawal.'
    raise StandardError
  rescue StandardError
    puts 'Please make a deposit'
  end
end
