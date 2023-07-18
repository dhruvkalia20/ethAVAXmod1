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
