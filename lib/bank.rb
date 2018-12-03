# This is the class the user would interact with. It stores the users balance
class Bank
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def deposit(amount)
    add_to_balance(amount)
  end

  private

  def add_to_balance(amount)
    @balance = + amount
  end
end
