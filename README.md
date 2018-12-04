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
[13] pry(main)> b.deposit(100)
=> [#<Transaction:0x00007ffc9d33c6c8 @amount=100, @balance=100, @date="04/12/2018", @type="credit">]

[14] pry(main)> b.withdraw(12)
=> [#<Transaction:0x00007ffc9d33c6c8 @amount=100, @balance=100, @date="04/12/2018", @type="credit">,
 #<Transaction:0x00007ffc9d2d32e0 @amount=12, @balance=88, @date="04/12/2018", @type="debit">]

[15] pry(main)> b.show_statement
=> "date || credit || debit || balance\n04/12/2018 || || 12.00 || 88.00\n04/12/2018 || 100.00 || || 100.00"

[16] pry(main)> puts _
date || credit || debit || balance
04/12/2018 || || 12.00 || 88.00
04/12/2018 || 100.00 || || 100.00
=> nil
```
