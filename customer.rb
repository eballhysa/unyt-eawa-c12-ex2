class Customer
  attr_accessor :id, :name, :surname, :email

  def initialize(params)
    self.id = params[:id]
    self.name = params[:name]
    self.surname = params[:surname]
    self.email = params[:email]
  end
end