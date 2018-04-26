[![CircleCI](https://circleci.com/gh/AlfieDarko/Bank-Tech-Test.svg?style=badge)](https://circleci.com/gh/AlfieDarko/Bank-Tech-Test) [![Maintainability](https://api.codeclimate.com/v1/badges/82661539fce10cbc2900/maintainability)](https://codeclimate.com/github/AlfieDarko/Bank-Tech-Test/maintainability) [![Coverage Status](https://coveralls.io/repos/github/AlfieDarko/Bank-Tech-Test/badge.svg?branch=master)](https://coveralls.io/github/AlfieDarko/Bank-Tech-Test?branch=master)

# Bank-Tech-Test
Makers Academy Week #10 - Bank Tech Test Challenge

## Project Overview
I have set out to create a Bank application as according to the tech test specification. You can withdraw and deposit money to your account and view a list of previous transactions. The application can be executed via command line.

## Users Stories
>As a bank account holder,
>So I can know what I can spend,
>I want to be able to view my account balance.

>As a bank account holder,
>so I can hold cash,
>I want to be able to make withdrawals from my account.

>As a bank account holder,
>so I can build my savings,
>I want to be able to make deposits into my account.

>As a bank account holder,
>so I can verify my own spending
>I want to be able print a detailed statement of my previous transactions and their dates.

## Built With
Ruby

## Installation
### Prerequisites
Install Ruby (https://www.ruby-lang.org/en/documentation/installation/)
Run the command 'irb' from the commandline.

Alternatively

## Usage
in IRB or PRY (ruby environments)

You can start off by doing

```
require './lib/app.rb'
```
<img src="https://preview.ibb.co/bL7JMx/Screen_Shot_2018_04_26_at_20_22_55.png" alt="Screen_Shot_2018_04_26_at_20_22_55" border="0"></a>


or if you are using the repl.it website
```
require './main.rb'
```



then run code below
```
account = BankAccount.new
```
<img src="https://preview.ibb.co/eBenEH/Screen_Shot_2018_04_26_at_20_23_15.png" alt="Screen_Shot_2018_04_26_at_20_23_15" border="0"></a>

This will instantiate the BankAccount class and will allow you to run the
methods in the next section.

## Methods

**account.deposit(amount)**

'Run this method with an integer as a parameter to deposit funds into your account'

**account.withdraw(amount)**

'Run this method with an integer as a parameter to withdraw available
 funds into your account'

**account.show_balance**

'This method will return your current account balance'

**account.print_statement**

'This method will print your statement showing the dates and amounts of Many
credits and debits relating to this account'

## Testing
**Tech Used:**
* RSpec (Unit Tests)
* Simplecov (Coverage)
* CircleCI
* CodeClimate

Using the terminal, while in the project folder type and run 'rspec' to run
the all the project tests. The class, class methods
and scenarios tested will be displayed in the terminal.

To run each class tests individually follow 'rspec' with any of the files in the spec file folder so for eg.

'rspec spec/balance_spec.rb' will only run the specs that test units in the balance class.

## Authors
Alfie Darko

## License
This project is licensed under the MIT License

## Contact
Alfie Darko:
email: me@alfiedarko.co.uk
