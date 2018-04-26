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
      subject.history.push([args])
    end

    balance.credit(100)
    puts balance.holdings
    expect(subject.history).to eq [[100]]
  end

  describe 'add_record' do
    it 'adds transactions to the history property / refactor' do
      balance = double('balance')

        allow(balance).to receive(:holdings)
        allow(balance).to receive(:credit) do |args|
          allow(balance).to receive(:holdings) {args}
          subject.add_record(args, balance.holdings)
        end
        balance.credit(100)
      expect(subject.history).to eq [["04/26/2018", 100, 100]]
    end
  end
end
