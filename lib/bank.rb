require_relative 'transaction'
require_relative 'statement'
# This is the class the user would interact with. It stores the users balance
class Bank
  attr_reader :balance, :statement
  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount, new_transaction = Transaction.new(@balance))
    transaction = new_transaction
    transaction.credit(amount)
    new_balance(transaction.balance)
    statement.add(transaction)
  end

  def withdraw(amount, new_transaction = Transaction.new(@balance))
    transaction = new_transaction
    transaction.debit(amount)
    new_balance(transaction.balance)
  end

  private

  def new_balance(amount)
    @balance = amount
  end
end
