require_relative 'transaction'

class CreditTransaction < Transaction
  def credit(amount)
    type_is_credit if @type.nil?
    store_amount(amount)
    @balance += amount
  end
end
