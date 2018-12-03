# This class is responsible for storing transactions
class Statement
  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add(transaction)
    @transactions << transaction
  end
end
