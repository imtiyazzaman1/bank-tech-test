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
      table += "\n"
      table += add_date(transaction)
      table += add_credit(transaction)
      table += add_debit(transaction)
      table += format('%.2f', transaction.balance)
    end
    table
  end

  private

  def add_date(transaction)
    "#{transaction.date} || "
  end

  def add_credit(transaction)
    return "#{format('%.2f', transaction.amount)} || " if transaction.type == 'credit'

    '|| '
  end

  def add_debit(transaction)
    return "#{format('%.2f', transaction.amount)} || " if transaction.type == 'debit'

    '|| '
  end
end
