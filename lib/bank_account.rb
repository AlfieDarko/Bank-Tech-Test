require "balance.rb"

class BankAccount
  attr_accessor :balance
  def initialize(balance = Balance.new)
    @balance = balance
  end

  def show_balance
    @balance.holdings
  end

  
end
