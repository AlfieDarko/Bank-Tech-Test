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
    puts 'date || credit || debit || balance'
    @balance.transactions.output_history.map do |transaction|
      puts "#{transaction}"
    end
  end


end
