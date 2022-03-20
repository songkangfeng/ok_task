//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; 
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";


contract MyToken is ERC20 {

    constructor() ERC20("MyToken", "MT") {
        //_mint(msg.sender, 0);
    }

    function myMint(address account, uint amount) public {
   
       _mint(account, amount);

} 



}