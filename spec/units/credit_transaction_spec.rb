require 'credit_transaction'
require 'transaction'

describe CreditTransaction do
  let(:subject) { Transaction.new(1000).extend(CreditTransaction) }
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
