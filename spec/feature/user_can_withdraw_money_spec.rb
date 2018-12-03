require_relative '../../lib/bank'

describe('User can withdraw money') do
  it 'deducts money from the balance money is withdrawn' do
    bank = Bank.new
    bank.deposit(1000)
    bank.withdraw(500)
    expect(bank.balance).to eq(500)
  end

  it 'shows an error message if the user withdraws more than their balance' do
    bank = Bank.new
    expect { bank.withdraw(1000) }.to raise_error('You cannot withdraw more than your balance')
  end
end
