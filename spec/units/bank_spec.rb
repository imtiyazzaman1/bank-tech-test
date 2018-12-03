require 'bank'

describe Bank do
  describe('#deposit') do
    it 'stores the deposited amount' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end

  describe('#withdraw') do
    it 'subtracts money from the current balance' do
      subject.deposit(1000)
      subject.withdraw(500)
      expect(subject.balance).to eq(500)
    end
  end
end
