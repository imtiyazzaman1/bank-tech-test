require_relative 'credit_transaction'
require_relative 'debit_transaction'

# This class is responsible for building transactions
class TransactionFactory
  def self.build(type, current_balance)
    case type
    when :credit
      Transaction.new(current_balance).extend(CreditTransaction)
    when :debit
      Transaction.new(current_balance).extend(DebitTransaction)
    end
  end
end
