class BankAccount
 attr_accessor :balance, :status
 attr_reader :name

 def initialize(name)
   @name = "Avi"
   @balance = 1000
   @status = "open"
  end

  def deposit(amt)
    @balance += amt
  end

  def display_balances
    "Your balance is #{self.balance}."
  end

  def valid?
    self.status == 'open' && self.balance > 0
  end

  def close_account
    self.status = 'closed'
 end
