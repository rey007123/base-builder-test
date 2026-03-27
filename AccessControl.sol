// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AccessControl {
    mapping(address => bool) public admins;

    constructor() {
        admins[msg.sender] = true;
    }

    function addAdmin(address newAdmin) public {
        require(admins[msg.sender], "Not admin");
        admins[newAdmin] = true;
    }
}
