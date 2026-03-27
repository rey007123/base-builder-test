// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Timer {
    uint256 public startTime;

    constructor() {
        startTime = block.timestamp;
    }

    function elapsedTime() public view returns (uint256) {
        return block.timestamp - startTime;
    }
}
