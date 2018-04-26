class Transactions
  attr_accessor :history
  def initialize
    @history = []
  end

def add_record(amount, holdings)
  history.push([date,amount,holdings])
end

def output_history
  # puts "date || credit || debit || balance"
   @history.map do |date,amount,balance|
    "#{date} #{amount} #{balance}"
 end
end


private
def date
  DateTime.now.strftime('%m/%d/%Y')
end

end
