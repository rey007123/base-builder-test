// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract EventLogger {
    event LogMessage(string message, address sender);

    function log(string memory message) public {
        emit LogMessage(message, msg.sender);
    }
}
