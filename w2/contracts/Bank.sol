//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; 

contract Bank {

address  owner ;

mapping(address => uint) public balances;
uint public deposits = 0;

  constructor() {
        owner = msg.sender;
    }

function deposit (uint deNum) public {

balances[msg.sender] += deNum;
allBalances(deNum);

}

function allBalances  (uint balance) private{ 
    deposits += balance;
}

function withdraw() public {
   
payable(owner).transfer(deposits);


}
  receive () external  payable{

 }


}