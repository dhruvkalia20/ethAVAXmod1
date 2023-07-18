# Error Handling

In this solidity program we are making a contract to demonstrate the use of  require(),assert() and revert() keywords.This contract is used to define the error handling using all these statements in solidity programming.

## Description

The contract has three functions:

credit(): This function allows you to credit the account with an amount. The function requires that the amount be greater than 0, otherwise it will throw an error.
debit(): This function allows you to debit the account with an amount. The function asserts that the amount is less than or equal to the account balance, otherwise it will throw an error.
finalamount(): This function returns the final amount in the account. If the account balance is less than 5000, the function will revert an error.

The code uses the following keywords to handle errors:

require(): This keyword throws an error if the condition is not met.
assert(): This keyword throws an error if the condition is not met, and the error message is included in the revert message.
revert(): This keyword throws an error and terminates the contract execution

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., module1.sol). Copy and paste the following code into the file:

____

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Errorhandling
{
    uint public account_balance=5000;
    function credit(uint amount)public {
        require(amount>0,"please enter a amount");
        account_balance+=amount;
    }
    function debit(uint amount)public{
        assert(amount<=account_balance);
        account_balance-=amount;
    }
    function finalamount() public view {
        if(account_balance<5000){
            revert("you have balance less then 5000");
        }
    }
}
                                             ____

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile module1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by clicking on debit and credit functions ,credit function will add the amount to current balance and debit will subtract it from current balance , also we have one more function call final amount which handles error if the current ammount is less then 5000 and gives output at console as the current amount is less then 5000.One last thing we have is account balance which gives the current account balance.

## Authors

Metacrafter Chris  
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
