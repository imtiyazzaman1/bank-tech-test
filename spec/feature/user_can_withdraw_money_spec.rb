require_relative '../../lib/bank'

describe('User can withdraw money') do
  it 'deducts money from the balance money is withdrawn' do
    bank = Bank.new
    bank.deposit(1000)
    bank.withdraw(500)
    expect(bank.balance).to eq(500)
  end
end
