require './account.rb'

class CheckingAccount < Account
  include Comparable

  attr_reader :balance

  def initialize(account_no, customer, starting_balance=0)
    super(account_no, customer)
    @balance=0
    deposit(starting_balance)
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  def <=> (other)
    self.balance <=> other.balance
  end
end