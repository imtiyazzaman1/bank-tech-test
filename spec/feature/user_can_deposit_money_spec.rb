require_relative '../../lib/bank'
describe('User can deposit money') do
  it('shows balance of 1000 when 1000 has been deposited') do
    bank = Bank.new
    bank.deposit(1000)
    expect(bank.balance).to eq(1000)
  end
end
