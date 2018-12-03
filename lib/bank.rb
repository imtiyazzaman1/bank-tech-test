require_relative 'transaction'
# This is the class the user would interact with. It stores the users balance
class Bank
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(amount, new_transaction = Transaction.new(@balance))
    transaction = new_transaction
    transaction.credit(amount)
    new_balance(transaction.balance)
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
