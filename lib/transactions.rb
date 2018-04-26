class Transactions
  attr_accessor :history
  def initialize
    @history = []
  end

def add_record(amount, holdings)
  history.push([date,amount,holdings])
end

private
def date
  DateTime.now.strftime('%m/%d/%Y')
end

end
