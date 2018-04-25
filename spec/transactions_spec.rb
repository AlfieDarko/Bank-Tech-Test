require 'transactions.rb'

describe Transactions do
  it 'has a history property that is an array of zero' do
    expect(subject.history).to eq []
  end
end
