require_relative '../../lib/bank'

describe('Viewing account statement') do
  it 'shows the details of each transaction' do
    bank = Bank.new
    bank.deposit(1000)
    bank.deposit(2000)
    bank.withdraw(500)

    expect(bank.show_statement).to eq "date || credit || debit || balance
03/12/2018 || || 500.00 || 2500.00
03/12/2018 || 2000.00 || || 3000.00
03/12/2018 || 1000.00 || || 1000.00"
  end
end
