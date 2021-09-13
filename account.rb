class Account
  private
  @@BANK_NAME = 'XYZ BANK'

  public
  attr_reader :account_no, :customer

  def initialize(account_no, customer)
    @account_no = account_no
    @customer = customer
  end

  def self.bank_name
    @@BANK_NAME
  end
end