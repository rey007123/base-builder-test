// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract MultiSigWallet {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function confirmTransaction() public view returns (bool) {
        return msg.sender == owner;
    }
}
