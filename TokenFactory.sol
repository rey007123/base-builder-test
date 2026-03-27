// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TokenFactory {
    event TokenCreated(address tokenAddress, string name);

    function createToken(string memory name, string memory symbol) public {
        // Simulasi pembuatan token (untuk demo)
        emit TokenCreated(address(this), name);
    }
}
