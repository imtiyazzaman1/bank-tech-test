class Bank
  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    add_to_balance(amount)
  end

  private

  def add_to_balance(amount)
    @balance =+ amount
  end
end
