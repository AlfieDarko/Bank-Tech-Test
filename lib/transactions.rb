require 'date'

# Holds all transaction operations logic
class Transactions
  attr_accessor :history
  def initialize
    @history = []
  end

  def add_credit_record(amount, holdings)
    history.push([date, amount, nil, holdings])
  end

  def add_debit_record(amount, holdings)
    history.push([date, nil, amount, holdings])
  end

  def output_history
    @history.map do |date, credit, debit, balance|
      "#{date} || #{credit} || #{debit} || #{balance}"
    end
  end

  def print_statement
    puts 'date || credit || debit || balance'
    output_history.map do |transaction|
      puts transaction.to_s
    end
  end

  private

  def date
    DateTime.now.strftime('%m/%d/%Y')
  end
end
