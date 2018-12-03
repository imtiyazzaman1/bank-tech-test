require_relative '../../lib/bank'

describe('Viewing account statement') do
  it 'shows the details of each transaction' do
    bank = Bank.new
    bank.deposit(1000)
    bank.deposit(2000)
    bank.withdraw(500)

    expect(bank.statement.print).to eq "date || credit || debit || balance
#{Time.now.strftime('%d/%m/%y')} || || 500.00 || 2500.00
#{Time.now.strftime('%d/%m/%y')} || 2000.00 || || 3000.00
#{Time.now.strftime('%d/%m/%y')} || 1000.00 || || 1000.00"
  end
end
