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
      subject.deposit(200)
      expect(subject.show_balance).to eq 200
    end
  end

  describe '.withdraw' do
    it 'withdraws money from balance' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.show_balance).to eq 50
    end
  end




end
