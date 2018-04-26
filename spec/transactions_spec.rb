require 'transactions.rb'

describe Transactions do

  before(:all) do
    transactions = Transactions.new
  end

  it 'has a history property that is an array of zero' do
    expect(subject.history).to eq []
  end

  it 'adds transactions to the history property' do
  balance = double('balance')

    allow(balance).to receive(:holdings)
    allow(balance).to receive(:credit) do |args|
      allow(balance).to receive(:holdings) {args}
    end

    balance.credit(100)
    puts balance.holdings
    expect(subject.transactions).to eq [100]
  end
end
