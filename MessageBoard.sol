// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MessageBoard {
    string public latestMessage;

    function postMessage(string memory message) public {
        latestMessage = message;
    }
}
