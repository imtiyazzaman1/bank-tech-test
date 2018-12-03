require 'statement'

describe Statement do
  let(:transaction_1) { double :transaction_1 }
  let(:transaction_2) { double :transaction_2 }
  describe '#add' do
    it 'stores transaction' do
      subject.add(transaction_1)
      expect(subject.transactions).to include transaction_1
    end
  end

  describe '#print' do
    it 'displays the stored transactions' do
      subject.add(transaction_1)
      allow(transaction_1).to receive(:date).and_return('03/12/2018')
      allow(transaction_1).to receive(:type).and_return('credit')
      allow(transaction_1).to receive(:balance).and_return(1000)
      allow(transaction_1).to receive(:amount).and_return(1000)

      subject.add(transaction_2)
      allow(transaction_2).to receive(:date).and_return('03/12/2018')
      allow(transaction_2).to receive(:type).and_return('debit')
      allow(transaction_2).to receive(:balance).and_return(700)
      allow(transaction_2).to receive(:amount).and_return(300)

      expect(subject.print).to eq "date || credit || debit || balance
03/12/2018 || || 300.00 || 700.00\n03/12/2018 || 1000.00 || || 1000.00"
    end
  end
end
