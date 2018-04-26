require "balance.rb"

class BankAccount
  attr_accessor :balance
  def initialize(balance = Balance.new)
    @balance = balance
  end

  def show_balance
    @balance.holdings
  end

  def deposit(amount)
    @balance.credit(amount)
  end

  def withdraw(amount)
    @balance.debit(amount)
  end

  def print_statement
    @balance.transactions.print_statement
  end


end
