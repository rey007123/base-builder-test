// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UserRegistry {
    mapping(address => string) public usernames;

    function register(string memory username) public {
        usernames[msg.sender] = username;
    }

    function getUsername(address user) public view returns (string memory) {
        return usernames[user];
    }
}
