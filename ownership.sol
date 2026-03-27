
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ownership {
    address public owner;

    constructor() { owner = msg.sender; }

    function isOwner() public view returns (bool) { return msg.sender == owner; }
    function transferOwnership(address newOwner) public {
        require(msg.sender == owner, "Only owner");
        owner = newOwner;
    }
}
