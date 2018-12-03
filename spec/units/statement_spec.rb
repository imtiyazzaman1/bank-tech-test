require 'statement'

describe Statement do
  let(:transaction) { double :transaction }
  describe '#add' do
    it 'stores transaction' do
      subject.add(transaction)
      expect(subject.transactions).to include transaction
    end
  end
end
