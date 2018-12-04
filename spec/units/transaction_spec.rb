require 'transaction'
require 'timecop'

describe(Transaction) do
  let(:subject) { described_class.new(1000) }

  it 'has the date of when it occurs' do
    expect(subject.date).to eq('03/12/2018')
  end

  it 'has a balance' do
    expect(subject.balance).to eq 1000
  end
end
