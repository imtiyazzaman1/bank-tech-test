require_relative 'transaction'

# This class reduces the balance for a credit transaction
module CreditTransaction
  def credit(amount)
    type_is_credit if @type.nil?
    store_amount(amount)
    @balance += amount
  end
end
