# This class stores the data, type and amount of money transacted
class Transaction
  attr_reader :date, :type, :balance, :amount
  def initialize(balance)
    @balance = balance
    @date = Time.now.strftime('%d/%m/%Y')
  end

  private

  def store_amount(amount)
    @amount = amount
  end

  def type_is_credit
    @type = 'credit'
  end

  def type_is_debit
    @type = 'debit'
  end
end
