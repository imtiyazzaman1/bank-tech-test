# This class stores the data, type and amount of money transacted
class Transaction
  attr_reader :type, :balance, :amount
  def initialize(balance)
    @balance = balance
  end

  def credit(amount)
    type_is_credit
    store_amount(amount)
    @balance += amount
  end

  private

  def store_amount(amount)
    @amount = amount
  end

  def type_is_credit
    @type = 'credit'
  end
end
