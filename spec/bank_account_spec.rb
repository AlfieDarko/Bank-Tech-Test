require 'bank_account.rb'

describe BankAccount do
  it 'initializes with balance class' do
    expect(subject.balance).to be_instance_of Balance
  end

  describe '.show_balance' do
    it 'returns the balance of the account' do
      expect(subject.show_balance).to eq 0
    end
  end

  describe '.deposit' do
    it 'deposits money into balance' do
      subject.deposit(100)

      expect(subject.show_balance).to eq 100
    end
  end
end
