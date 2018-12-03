require('transaction')

describe(Transaction) do
  let(:subject) { described_class.new(1000) }
  describe('#credit') do
    before(:each) do
      subject.credit(500)
    end
    it 'stores the transactions as type credit' do
      expect(subject.type).to eq 'credit'
    end

    it 'add to the balance' do
      expect(subject.balance).to eq(1500)
    end

    it 'stores the tranaction amount' do
      expect(subject.amount).to eq(500)
    end
  end
end
