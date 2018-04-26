require 'balance.rb'

describe Balance do
  it 'has a holdings of zero' do
    expect(subject.holdings).to eq 0
  end

  it 'initiates with a transactions property' do
    expect(subject.transactions).to be_instance_of Transactions
  end

  describe '.credit' do
    it 'adds money to the holdings property' do
      subject.credit(100.00)
      expect(subject.holdings).to eq 100.00
    end
  end

  describe '.debit' do
    it 'takes away money from the holdings property' do
      subject.credit(300.00)
      subject.debit(100.00)
      expect(subject.holdings).to eq 200.00
    end

    it 'should raise error if user withdraws more than in holdings' do
      expect { subject.debit(100.00) }.to raise_error 'StandardError'
    end
  end
end
