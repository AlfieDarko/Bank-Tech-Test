require './lib/transactions.rb'

# This class holds all the balance operations
class Balance
  attr_accessor :holdings, :transactions
  def initialize(transactions = Transactions.new)
    @transactions = transactions
    @holdings = 0
  end

  def credit(amount)
    @holdings += amount
    @transactions.add_credit_record(amount, @holdings)
  end

  def debit(amount)
    if amount > @holdings
      insufficient_funds
    else
      @holdings -= amount
      @transactions.add_debit_record(amount, @holdings)
    end
  end

  private

  def insufficient_funds
    puts 'Insufficient funds, you will not be able to make a withdrawal.'
    raise StandardError
  end
end
