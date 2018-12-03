require 'bank'

describe Bank do
  describe('#deposit') do
    it 'stores the deposited amount' do
      subject.deposit(1000)
      expect(subject.balance).to eq(1000)
    end
  end
end
