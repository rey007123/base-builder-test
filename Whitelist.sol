// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Whitelist {
    mapping(address => bool) public isWhitelisted;

    function addToWhitelist(address user) public {
        isWhitelisted[user] = true;
    }

    function checkWhitelist(address user) public view returns (bool) {
        return isWhitelisted[user];
    }
}
