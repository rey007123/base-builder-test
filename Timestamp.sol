// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Timestamp {
    uint256 public deploymentTime;

    constructor() { deploymentTime = block.timestamp; }

    function getTimeSinceDeploy() public view returns (uint256) {
        return block.timestamp - deploymentTime;
    }
}
