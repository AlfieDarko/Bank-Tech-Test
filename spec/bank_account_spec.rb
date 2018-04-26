require 'bank_account.rb'

describe BankAccount do
  it 'initializes with balance class' do
    expect(subject.balance).to be_instance_of Balance
  end
end
