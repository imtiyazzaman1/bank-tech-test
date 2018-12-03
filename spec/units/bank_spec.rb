require 'bank'

describe Bank do
  let(:transaction) { double :transaction }

  before(:each) do
    allow(transaction).to receive(:credit).with(1000)
    allow(transaction).to receive(:balance).and_return(1000)
    subject.deposit(1000, transaction)
  end

  describe('#deposit') do
    it 'stores the deposited amount' do
      expect(subject.balance).to eq(1000)
    end

    it 'stores the transaction' do
      expect(subject.statement.transactions).to include transaction
    end
  end

  describe('#withdraw') do
    it 'subtracts money from the current balance' do
      allow(transaction).to receive(:debit).with(500)
      allow(transaction).to receive(:balance).and_return(500)

      subject.withdraw(500, transaction)
      expect(subject.balance).to eq(500)
    end
  end
end
