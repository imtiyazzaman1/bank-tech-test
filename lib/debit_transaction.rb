require_relative 'transaction'

# This class reduces the balance for a debit transaction
class DebitTransaction < Transaction
  def debit(amount)
    type_is_debit if @type.nil?
    store_amount(amount)
    @balance -= amount
  end
end
