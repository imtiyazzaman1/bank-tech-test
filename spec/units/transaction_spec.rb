require('transaction')

describe(Transaction) do
  describe('#credit') do
    it 'stores the transactions as type credit' do
      subject.credit
      expect(subject.type).to eq 'credit'
    end
  end

end
