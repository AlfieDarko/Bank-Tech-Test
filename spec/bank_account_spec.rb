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
    it 'deposits 200 into balance' do
      subject.deposit(200)
      expect(subject.show_balance).to eq 200
    end

    it 'deposits 2000000 into balance' do
      subject.deposit(2_000_000)
      expect(subject.show_balance).to eq 2_000_000
    end
  end

  describe '.withdraw' do
    it 'deposits 100 then withdraws 50 from balance' do
      subject.deposit(100)
      subject.withdraw(50)
      expect(subject.show_balance).to eq 50
    end

    it 'deposits 100000 then withdraws 5 from balance' do
      subject.deposit(100_000)
      subject.withdraw(5)
      expect(subject.show_balance).to eq 99_995
    end

    it ' withdraws 5 from balance without depositing' do
      expect { subject.withdraw(5) }.to raise_error
      expect(subject.show_balance).to eq 0
    end
  end
end
