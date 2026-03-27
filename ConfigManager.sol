// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ConfigManager {
    uint256 public fee = 100;

    function updateFee(uint256 newFee) public {
        fee = newFee;
    }
}
