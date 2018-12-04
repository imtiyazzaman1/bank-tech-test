require 'bank'
require 'statement'

describe Bank do
  let(:transaction) { double :transaction }
  let(:transaction_2) { double :transaction_2 }
  let(:statement) { double :statement }
  let(:subject) { described_class.new(statement) }

  before(:each) do
    allow(statement).to receive(:add)
    allow(transaction).to receive(:credit).with(1000)
    allow(transaction).to receive(:balance).and_return(1000)
    subject.deposit(1000, transaction)
  end

  describe('#deposit') do
    it 'stores the deposited amount' do
      expect(subject.balance).to eq(1000)
    end

    it 'stores the transaction' do
      expect(statement).to receive(:add)
      subject.deposit(1000, transaction)
    end
  end

  describe('#withdraw') do
    before(:each) do
      allow(transaction_2).to receive(:debit).with(500)
      allow(transaction_2).to receive(:balance).and_return(500)
      subject.withdraw(500, transaction_2)
    end

    it 'subtracts money from the current balance' do
      expect(subject.balance).to eq(500)
    end

    it 'stores the transaction' do
      expect(statement).to receive(:add)
      subject.withdraw(500, transaction_2)
    end

    it 'throws an error if withdraw amount exceeds balance' do
      expect { subject.withdraw(600, transaction_2) }.to raise_error(
        'You cannot withdraw more than your balance'
      )
    end
  end
end
