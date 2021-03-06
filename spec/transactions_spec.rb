require 'transactions.rb'

describe Transactions do
  it 'has a history property that is an array of zero' do
    expect(subject.history).to eq []
  end

  it 'adds transactions to the history property' do
    balance = double('balance')

    allow(balance).to receive(:holdings)
    allow(balance).to receive(:credit) do |args|
      allow(balance).to receive(:holdings) { args }
      subject.history.push([args])
    end

    balance.credit(100)
    expect(subject.history).to eq [[100]]
  end

  describe '.add_credit_record' do
    it 'adds transactions to the history property / refactor' do
      balance = double('balance')

      allow(balance).to receive(:holdings)
      allow(balance).to receive(:credit) do |args|
        allow(balance).to receive(:holdings) { args }
        subject.add_credit_record(args, balance.holdings)
      end
      balance.credit(100)
      expect(subject.history).to eq [['04/27/2018', 100, nil, 100]]
    end
  end

  describe '.output_history' do
    it 'outputs transaction history as an array' do
      balance = double('balance')

      allow(balance).to receive(:holdings)
      allow(balance).to receive(:credit) do |args|
        allow(balance).to receive(:holdings) { args }
        subject.add_credit_record(args, balance.holdings)
      end
      balance.credit(100)
      balance.credit(200)

      expect(subject.output_history).to eq(['04/27/2018 || 100 ||  || 100',
                                            '04/27/2018 || 200 ||  || 200'])
    end
  end

  describe '.print_statement' do
    it 'prints the transactions statement in the required format' do
      balance = double('balance')

      allow(balance).to receive(:holdings)
      allow(balance).to receive(:credit) do |args|
        allow(balance).to receive(:holdings) { args }
        subject.add_credit_record(args, balance.holdings)
      end
      balance.credit(100)

      expect do
        subject.print_statement
      end.to output("date || credit || debit || balance
04/27/2018 || 100 ||  || 100
").to_stdout
    end
  end
end
