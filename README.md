# Back Tech Test
## About the Program
This program is designed to model the interactions between a user and a bank.

This program was built following a TDD approach. Each functionality was test driven, with both feature and unit tests. The unit tests have had their functionalities stubbed and mock so they can isolated

The program was built following an OO design. It is split into three classes; `Bank`, `Transaction`, `Statement`

`Bank`
- This is the class user interacts with. It is responsible for storing the current balance of the user, with any other functionality delegated to the other two classes

`Transaction`
- This class is responsible for storing the data, type and amount of money transacted during a withdrawal or a deposit. The class also contain the new balance after the transaction which the `Bank` uses to update its current balance

`Statement`
- This class is responsible for storing the transactions. Upon calling the `print` method, it displays the stored information in a readable way

The classes and method all adhere to SRP

## Installation
1. Clone this repo
2. `cd` into directory
3. Load `./lib/bank.rb` into IRB/pry

## Running Tests
1. Clone this repo
2. `cd` into directory
3. Run `rspec`

The test files can be found within the `spec` folder. The unit tests test each class with any dependancies stubbed. The feature tests test user interactions

## Example Usage
```
[2] pry(main)> require './lib/bank.rb'
=> true
[3] pry(main)> bank = Bank.new
=> #<Bank:0x00007ff5f89b6fe0 @balance=0, @statement=#<Statement:0x00007ff5f89b6fb8 @transactions=[]>>
[4] pry(main)> bank.deposit(1000)
=> [#<Transaction:0x00007ff5f8934ce8 @amount=1000, @balance=1000, @date="03/12/18", @type="credit">]
[5] pry(main)> bank.withdraw(100)
=> [#<Transaction:0x00007ff5f8934ce8 @amount=1000, @balance=1000, @date="03/12/18", @type="credit">,
 #<Transaction:0x00007ff5f8bcbdf8 @amount=100, @balance=900, @date="03/12/18", @type="debit">]
[6] pry(main)> bank.withdraw(10.40)
=> [#<Transaction:0x00007ff5f8934ce8 @amount=1000, @balance=1000, @date="03/12/18", @type="credit">,
 #<Transaction:0x00007ff5f8bcbdf8 @amount=100, @balance=900, @date="03/12/18", @type="debit">,
 #<Transaction:0x00007ff5f8ad5a48 @amount=10.4, @balance=889.6, @date="03/12/18", @type="debit">]
[7] pry(main)> bank.show_statement
=> "date || credit || debit || balance\n03/12/18 || || 10.40 || 889.60\n03/12/18 || || 100.00 || 900.00\n03/12/18 || 1000.00
|| || 1000.00"

[8] pry(main)> puts _
date || credit || debit || balance
03/12/18 || || 10.40 || 889.60
03/12/18 || || 100.00 || 900.00
03/12/18 || 1000.00 || || 1000.00
=> nil
```
