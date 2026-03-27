// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ERC20Minimal {
    string public name = "BaseToken";
    string public symbol = "BASE";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000000 * 10 ** 18;
    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) public returns (bool) {
        require(balanceOf[msg.sender] >= amount, "Insufficient balance");
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
        return true;
    }
}
