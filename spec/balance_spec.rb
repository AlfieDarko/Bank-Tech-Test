require 'balance.rb'

describe Balance do
  it 'has a holdings of zero' do
    expect(subject.holdings).to eq 0
  end

  describe '.credit' do
    it 'adds money to the holdings property' do
      subject.credit(100.00)
      expect(subject.holdings).to eq 100.00
    end
  end
end
