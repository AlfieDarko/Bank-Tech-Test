require 'balance.rb'

describe Balance do
  before(:all) do
    balance = Balance.new
  end

  it 'has a holdings of zero' do
    expect(subject.holdings).to eq 0
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
      expect(subject.debit(100.00)).to raise_error(StandardError)
    end
  end
end
