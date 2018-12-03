# This class is responsible for storing transactions
class Statement
  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add(transaction)
    @transactions << transaction
  end

  def print
    @transactions.reverse!

    table = 'date || credit || debit || balance'

    @transactions.each do |transaction|
      table += create_table_entry(transaction)
    end
    table
  end

  private

  def add_date(transaction)
    "#{transaction.date} || "
  end

  def add_credit(transaction)
    return '|| ' unless transaction.type == 'credit'

    "#{to_2dp(transaction.amount)} || "
  end

  def add_debit(transaction)
    return '|| ' unless transaction.type == 'debit'

    "#{to_2dp(transaction.amount)} || "
  end

  def to_2dp(number)
    format('%.2f', number)
  end

  def create_table_entry(transaction)
    "\n" + add_date(transaction) + add_credit(transaction) +
    add_debit(transaction) + to_2dp(transaction.balance)
  end
end
