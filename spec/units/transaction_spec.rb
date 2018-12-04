require 'transaction'
require 'timecop'

describe(Transaction) do
  let(:subject) { described_class.new(1000) }
  before do
    time = Time.local(2018, 12, 3, 0, 0)
    Timecop.freeze(time)
  end

  after do
    Timecop.return
  end

  it 'has the date of when it occurs' do
    expect(subject.date).to eq('03/12/2018')
  end
end
