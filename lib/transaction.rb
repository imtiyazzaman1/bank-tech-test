# This class stores the data, type and amount of money transacted
class Transaction
  attr_reader :type, :balance
  def initialize(balance)
    @balance = balance
  end

  def credit(amount)
    type_is_credit
    @balance += amount
  end

  private

  def type_is_credit
    @type = 'credit'
  end
end
