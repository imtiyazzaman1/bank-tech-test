require 'debit_transaction'
require 'transaction'

describe(DebitTransaction) do
  let(:subject) { Transaction.new(1000).extend(DebitTransaction) }
  before(:each) do
    subject.debit(500)
  end

  it 'stores the tranaction type as debit' do
    expect(subject.type).to eq 'debit'
  end

  it 'subtracts from the balance' do
    expect(subject.balance).to eq(500)
  end

  it 'stores the transaction amount' do
    expect(subject.amount).to eq(500)
  end
end
