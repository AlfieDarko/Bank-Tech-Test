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
* Install Ruby => (https://www.ruby-lang.org/en/documentation/installation/)

* Download Project Folder and then navigate to its folder using a terminal/cmd.

* run ```bundle install``` to install any gems and dependancies.

* Then run the command 'irb' from the commandline.

Alternatively you can use this online ruby environment I have prepared earlier.
 => (https://repl.it/@AlfieDarko1/Bank-Tech-Test)

## Usage
in IRB or PRY (ruby environments)

You can start off running this code in the terminal environment

```
require './lib/app.rb'
```
<img src="https://preview.ibb.co/bL7JMx/Screen_Shot_2018_04_26_at_20_22_55.png" alt="Screen_Shot_2018_04_26_at_20_22_55" border="0"></a>


<br><br>
or alternatively if you are using the repl.it website
```
require './main.rb'
```

<br>

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
<br><br><br>


**account.withdraw(amount)**

'Run this method with an integer as a parameter to withdraw available
 funds into your account'
<br><br><br>
**account.show_balance**

'This method will return your current account balance'
<br><br><br>

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

## Thoughts
This was an interesting project to do as I had to think a lot about encapsulation
 and DRY principles. I actively tried to keep methods very short and moved all
logic to their respective classes and called them from where they were needed.

I used 3 classes. Balance dealt with updating the account holdings. it made calls
to the Transaction class to record every time there was balance update.
The transaction class held records of any money moves and also had a function
to print the statements.The bank account class was the front facing class
so our users could interact with the program.

I made small psuedo-code plans before hand but I found that the more I developed
it using TDD, the more areas I recognised could be refactored.

I considered making the DateTime format method its own module but I opted to make
it a private helper method under the transaction class instead.

## TODO
* I want to move the DateTime format method to its own method

* I plan to mock the date module somehow as in testing, as the day changes, it renders some of my tests wrong. This oversight was displayed to me when I fell asleep and woke up to a broken build!

* I plan to create diagrams to illustrate how the classes and methods communicate. This could have been created beforehand as part of a plan but I felt my design choices changed overtime so they wouldn't be an accurate description of what is going on unless done so at the end.<br>Perhaps they could be valuable as part of an insight to my process.

* Use TravisCI over CircleCI as I am having problems displaying the coverage percentage badge with CircleCI.

## Authors
Alfie Darko

## License
This project is licensed under the MIT License

## Contact
email: me@alfiedarko.co.uk
