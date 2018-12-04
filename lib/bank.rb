require_relative 'statement'
require_relative 'transaction_factory'

# This is the class the user would interact with. It stores the users balance
class Bank
  attr_reader :balance, :statement
  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount,
              new_transaction = TransactionFactory.build(:credit, @balance))
    transaction = new_transaction
    transaction.credit(amount)
    new_balance(transaction.balance)
    statement.add(transaction)
  end

  def withdraw(amount,
               new_transaction = TransactionFactory.build(:debit, @balance))
    raise 'You cannot withdraw more than your balance' if amount > balance

    transaction = new_transaction
    transaction.debit(amount)
    new_balance(transaction.balance)
    statement.add(transaction)
  end

  def show_statement
    @statement.print
  end

  private

  def new_balance(amount)
    @balance = amount
  end
end
