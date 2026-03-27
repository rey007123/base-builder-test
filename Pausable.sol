// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Pausable {
    bool public paused = false;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    function pause() public {
        require(msg.sender == owner, "Only owner");
        paused = true;
    }
}
