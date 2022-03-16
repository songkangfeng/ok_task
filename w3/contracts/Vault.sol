pragma solidity ^0.8.0; 

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

contract Vault {

address public tokenAddr;
mapping(address => uint) public balances;

//保存相关合约地址
constructor(address _tokenAddr) {
    tokenAddr = _tokenAddr;
}
//存款
function despote(uint _amount) public{
    require(IERC20(tokenAddr).transferFrom(msg.sender, address(this), _amount));
    balances[msg.sender] += _amount;
}

//取款
function withdraw(uint _amount) public {
require(balances[msg.sender] >= _amount && _amount > 0);
        balances[msg.sender] -= _amount;
require(IERC20(tokenAddr).transfer(msg.sender, _amount));
}


}
