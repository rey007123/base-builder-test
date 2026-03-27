// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Fundraiser {
    uint256 public totalRaised;

    function donate() public payable {
        totalRaised += msg.value;
    }

    function getTotal() public view returns (uint256) {
        return totalRaised;
    }
}
