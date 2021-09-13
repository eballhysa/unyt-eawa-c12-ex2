require './customer.rb'
require './checking_account.rb'

matz = Customer.new name: 'Yukihiro', surname: 'Matzumoto', id: 1234, email: 'matz@ruby.org'
gosling = Customer.new surname: 'Gosling', name: 'James', id: 87, email: 'james.gosling@java.com'
guido = Customer.new({:id => 2, :name => 'Guido', :surname => 'Van Rossum', :email => 'gvr@python.com'})

acc1 = CheckingAccount.new matz, '782-1235C'
acc2 = CheckingAccount.new matz, '782-1236C', 10000
acc3 = CheckingAccount.new gosling, '782-9093C', 850
acc4 = CheckingAccount.new guido, '782-1697C', 800



accounts = [acc1, acc2, acc3, acc4]
accounts.sort.reverse.map.each{|acc| puts "#{acc.account_no} - #{acc.balance}"}

puts matz.email, gosling.id, guido.name

i = 12
