require './customer.rb'
require './checking_account.rb'

matz = Customer.new name: 'Yukihiro', surname: 'Matzumoto', id: 1234, email: 'matz@ruby.org'
gosling = Customer.new surname: 'Gosling', name: 'James', id: 87, email: 'james.gosling@java.com'
guido = Customer.new({:id => 2, :name => 'Guido', :surname => 'Van Rossum', :email => 'gvr@python.com'})

acc1 = CheckingAccount.new '782-1235C', matz
acc2 = CheckingAccount.new '782-1236C', matz, 10000
acc3 = CheckingAccount.new '782-9093C', gosling, 850
acc4 = CheckingAccount.new '782-1697C', guido, 800

def display(acc)
    puts "#{acc.customer.full_name} #{acc.account_no} - #{acc.balance}"
end

accounts = [acc1, acc2, acc3, acc4]
accounts.sort.reverse.map.each{|acc| display acc}
