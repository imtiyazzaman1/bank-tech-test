require_relative 'transaction'
require_relative 'statement'
# This is the class the user would interact with. It stores the users balance
class Bank
  attr_reader :balance, :statement
  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount, new_transaction = Transaction.new(@balance))
    transaction = new_transaction
    transaction.credit(amount)
    new_balance(transaction.balance)
    statement.add(transaction)
  end

  def withdraw(amount, new_transaction = Transaction.new(@balance))
    raise 'You cannot withdraw more than your balance' if amount > balance

    transaction = new_transaction
    transaction.debit(amount)
    new_balance(transaction.balance)
    statement.add(transaction)
  end

  private

  def new_balance(amount)
    @balance = amount
  end
end
